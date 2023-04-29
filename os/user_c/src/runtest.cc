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
	"test_echo",
	"fork",
	"times",
	"yield",
	"clone",
	"umount",
	"busybox"
};
signed main(){
	for(int i=0;i<sizeof(testsuits_name)/8;i++){
		if(fork()==0){
			execve(testsuits_name[i],0,0);
		}else{
			wait(0);
		}
	}
	return 0;
}