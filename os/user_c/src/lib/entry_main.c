#include "syscall.h"
#include "unistd.h"

extern int main(int argc,char** argv);

extern "C" void entry_main(long *p)
{
	int argc = p[0];
	char **argv = (char**)(p+1);
	exit(main(argc, argv));
}
