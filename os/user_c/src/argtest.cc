#include "lib/syscall.h"
#include "lib/unistd.h"
#include "lib/stdio.c"
#include "lib/string.c"


signed main(int argc,char* argv[]){
	printf("%d\n",argc);
	for(int i=0;i<argc;++i){
		printf("%s\n",argv[i]);
	}
	return 0;
}