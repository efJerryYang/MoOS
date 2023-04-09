#include "lib/syscall.h"
#include "lib/unistd.h"
#include "lib/printf.c"

char nuclear[]="fusion\n";
int a=9,b=3;

int uni,posda;
char* c;

int plus(int a,int b){
	return a+b;
}

signed main(){
	printf("real shell stared!\n");
	while(1){
		char c=getchar();
		if(c==13) {
			printf("\nHello! Real Shell speaking! I'm now working in user mode.\n");
		}
		else putchar(c);
		if(c=='l') break;
	}
	int c=3;
	a++;//a=10
	a=plus(a*c,b);//30+3=33
	b=a*a;//33*33=990+99=1089
	printf("b:%d\n",b);
	return 0;
}