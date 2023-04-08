#include "lib/syscall.h"

const char nuclear[]="fusion";
int a=999,b=3;

int plus(int a,int b){
	return a+b;
}

signed main(){
	int c=3;
	a++;
	a=plus(a*a,b);
	b=a*a;
	return b;
}