#!/bin/bash

rm -f os_serial_out.txt makefile_stdout_stderr.txt

touch os_serial_out.txt

max_retries=5
retries=0

while [ $retries -lt $max_retries ]; do

    make local >makefile_stdout_stderr.txt 2>&1 &
    echo "Sleep 5 seconds to wait for QEMU to run. Makefile stderr and stdout are saved in makefile_stdout_stderr.txt"

    count=5
    code_executed=0
    while [ $count -ge 1 ]; do
        # 检查 os_serial_out.txt 的最后一行是否包含 'get pid=1 exited'
        last_line=$(tail -n 1 os_serial_out.txt)
        if [[ $last_line == *"get pid=1 exited"* ]]; then
            echo "Code execution completed, exiting the loop."
            code_executed=1
            break
        fi

        echo -n "$count, "
        count=$((count - 1))
        sleep 1
    done

    if [ $code_executed -eq 1 ]; then
        break
    else
        echo "Code execution timed out. Retrying..."
        retries=$((retries + 1))
    fi
done

if [ $retries -eq $max_retries ]; then
    echo "Reached maximum retries. Exiting..."
else
    echo "Code executed successfully within retries."
fi

echo "0"

pgrep qemu | xargs kill -s SIGINT

# 确保目录下的分支 pre-2023 是最新的
result_json=$(python ./testsuits-for-oskernel/riscv-syscalls-testing/user/src/oscomp/test_runner.py os_serial_out.txt)

printf "%-20s %-7s %-25s\n" "Name" "All" "Passed"

all_total=0
passed_total=0
failed_tests=""

while IFS=$'\n' read -r line; do
    name=$(echo "$line" | awk '{print $1}')
    all=$(echo "$line" | awk '{print $2}')
    passed=$(echo "$line" | awk '{print $3}')
    results=$(echo "$line" | awk '{$1=$2=$3=""; print $0}')

    printf "%-20s %-7s %-25s %s\n" "$name" "$all" "$passed" "$results"
    # printf "%-20s %-7s %-25s\n" "$name" "$all" "$passed"

    all_total=$(expr $all_total + $all)
    passed_total=$(expr $passed_total + $passed)

    if [ $passed -ne $all ]; then
        failed_tests+="$line"$'\n'
    fi
done < <(echo "$result_json" | jq -r '.[] | "\(.name) \(.all) \(.passed) \(.results)"')
echo ""
echo "Your score is $passed_total / $all_total"

echo ""
echo "Failed tests:"
printf "%-20s %-7s %-25s %s\n" "Name" "All" "Passed" "Results"

echo "$failed_tests" | while IFS=$'\n' read -r line; do
    if [ -n "$line" ]; then
        name=$(echo "$line" | awk '{print $1}')
        all=$(echo "$line" | awk '{print $2}')
        passed=$(echo "$line" | awk '{print $3}')
        results=$(echo "$line" | awk '{$1=$2=$3=""; print $0}')

        printf "%-20s %-7s %-25s %s\n" "$name" "$all" "$passed" "$results"
    fi
done
echo ""
echo "Your score is $passed_total / $all_total"

# Generated files
echo ""
echo "Generated files (ignored by git):"
echo "Serial output of QEMU: os_serial_out.txt"
echo "Makefile (make local): makefile_stdout_stderr.txt"
