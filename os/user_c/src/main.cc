#include "lib/syscall.h"
#include "lib/unistd.h"

char nuclear[]="fusion\n";
int a=9,b=3;

char getchar(){
	char c;
	read(0,&c,233);
	return c;
}

void putchar(char c){
	write(1,&c,1);
}

void putstr(char* c){
	while(*c!=0){
		putchar(*c);
		c++;
	}
}


int plus(int a,int b){
	return a+b;
}

signed main(){
	putstr("real shell stared!\n");
	while(1){
		char c=getchar();
		if(c==13) {
			putstr("\nHello! Real Shell speaking! I'm now working in user mode.\n");
		}
		else putchar(c);
		
	}
	int c=3;
	a++;//a=10
	a=plus(a*c,b);//30+3=33
	b=a*a;//33*33=990+99=1089
	while(1){
	}
	return b;
}