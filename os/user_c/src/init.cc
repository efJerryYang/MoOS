#include "lib/unistd.h"
#include "lib/stdio.c"
signed main(){
	if(fork()==0){
		// execve("shell",0,0);
		execve("runtest",0,0);
	}else{
		for(;;){
			int status;
			int x=waitpid(-1,&status,0);
			printf("[init proc] get pid=%d exited.\n",x);
		}
		for(;;);
	}
	return 0;
}