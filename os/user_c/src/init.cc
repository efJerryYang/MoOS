#include "lib/unistd.h"
#include "lib/stdio.c"
signed main(){
	if(fork()==0){
		execve("shell",0,0);
	}else{
		wait(0);
		printf("[init proc] all process exited.\n");
		for(;;);
	}
	return 0;
}