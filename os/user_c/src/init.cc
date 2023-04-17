#include "lib/unistd.h"
signed main(){
	sched_yield();
	exec("shell");
}