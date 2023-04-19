#include<iostream>
using namespace std;
#define zxc(x) cerr<<(#x)<<'='<<(x)<<'\n';
char* user_c_name[]={
	"init",
	"shell",
};

char* testsuits_name[]={
	"getpid",
	"getppid",
	"write",
	"gettimeofday",
	"sleep"
};

signed main(){
	printf("	.section .text\n");
	int len0=sizeof(user_c_name)/8;
	for(int i=0;i<len0;++i){
		char* s=user_c_name[i];
		printf("	.global %s_start\n",s);
		printf("	.global %s_end\n",s);
		printf("	.align 3\n");
		printf("%s_start:\n",s);
		printf("	.incbin \"../user_c/build/%s\"\n",s);
		printf("%s_end:\n",s);
		printf("\n");
	}
	int len1=sizeof(testsuits_name)/8;
	for(int i=0;i<len1;++i){
		char* s=testsuits_name[i];
		printf("	.global %s_start\n",s);
		printf("	.global %s_end\n",s);
		printf("	.align 3\n");
		printf("%s_start:\n",s);
		printf("	.incbin \"../../testsuits-for-oskernel/riscv-syscalls-testing/user/riscv64/%s\"\n",s);
		printf("%s_end:\n",s);
		printf("\n");
	}
	return 0;
}