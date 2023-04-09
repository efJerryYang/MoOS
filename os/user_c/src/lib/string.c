#define zxc(x) printf("%s=%d",(#x),(x))

int strlen( char* s){
	int ans=0;
	for(char* c = s;*c;c++) ans++;
	return ans;
}

int strcmp( char* a, char* b){
	for(char* s=a,*t=b;*s||*t;s++,t++){
		if(*s^*t){
			return *s>*t?1:-1;
		}
	}
	return 0;
}