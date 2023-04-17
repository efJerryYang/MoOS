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
	printf("----------shell started!---------\n");
	int cc=0;
	while(1){
		printf("shell %d,line %d>",getpid(),++cc);
		char c=getchar();char* t=buf;
		while(c!=13){
			if(c==0x08||c==0x7f){
				if(t!=buf){
					printf("\x08 \x08");
					*t--=0;
				}
			}else{
				putchar(c);
				*t++=c;
			}

			c=getchar();
		}
		*t=0;
		printf("\n");
		if(strlen(buf)==0) continue;
		if(!strcmp(buf,"exit")) break;
		if(!strcmp(buf,"yield")){
			sched_yield();
			continue;
		}
		if(!strcmp(buf,"fork")){
			int pid=fork();
			printf("fork returned %d.\n",pid);
			continue;
		}
		int pid=fork();
		if(pid==0){
			exec(buf);
		}else{
			sched_yield();
		}
	}
	exit(0);
	// return 0;
}