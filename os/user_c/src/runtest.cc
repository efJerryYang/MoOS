#include "lib/syscall.h"
#include "lib/unistd.h"
#include "lib/stdio.c"
#include "lib/string.c"
char* argv[16];
char testsuits_name[][49]={
	"getpid",
	"getppid",
	"write",
	"gettimeofday",
	"sleep",
	"wait",
	"waitpid",
	"exit",
	"execve",
	"fork",
	"brk",
	"times",
	"yield",
	"clone",
	"mount",
	"umount",
	"openat",
	"open",
	"close",
};
signed main(){
	int test_cc=sizeof(testsuits_name)/49;
	printf("test cases:%d\n",test_cc);
	for(int i=0;i<test_cc;i++){
		if(fork()==0){
			execve(testsuits_name[i],0,0);
		}else wait(0);
	}
	// execve("shell",0,0);
	close(0);
	return 0;
}