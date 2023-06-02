#include "lib/syscall.h"
#include "lib/unistd.h"
#include "lib/stdio.c"
#include "lib/string.c"


signed main(){
	for(int i=1;i<=3;++i){
		fork();
		printf("[%d] Hello world!\n",getpid());
		
	}
	return 0;
}