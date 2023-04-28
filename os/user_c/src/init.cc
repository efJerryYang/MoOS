#include "lib/unistd.h"
#include "lib/stdio.c"
signed main(){
	execve("shell",0,0);
	return 0;
}