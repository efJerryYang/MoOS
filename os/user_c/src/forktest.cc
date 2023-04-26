#include "lib/syscall.h"
#include "lib/unistd.h"
#include "lib/stdio.c"
#include "lib/string.c"


signed main(){
	for(int i=1;i<=4;++i){
		fork();
		printf("Hello world!\n");
	}
	exit(0);
}