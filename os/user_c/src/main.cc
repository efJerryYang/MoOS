#include "lib/syscall.h"
#include "lib/unistd.h"
#include "lib/stdio.c"
#include "lib/string.c"
char nuclear[]="fusion\n";

int plus(int a,int b){
	return a+b;
}
char buf[199];
signed main(){
	printf("real shell stared!\n");
	while(1){
		printf(">");
		char c=getchar();char* t=buf;
		while(c!=13){
			putchar(c);
			*t++=c;
			c=getchar();
		}
		*t=0;
		printf("\n");
		if(strlen(buf)==0) continue;
		if(!strcmp(buf,"exit")) break;
		printf("connot excute %s.\n",buf);
	}
	exit(-1);
	// return 0;
}