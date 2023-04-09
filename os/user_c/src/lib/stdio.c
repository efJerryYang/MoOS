#include <stdarg.h>
typedef unsigned int uint;
typedef unsigned long long uint64;
#define va_arg(ap, type) (__builtin_va_arg(ap, type))

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

static char digits[] = "0123456789abcdef";

static void
printint(int xx, int base, int sign)
{
  char buf[16];
  int i;
  uint x;

  if(sign && (sign = xx < 0))
    x = -xx;
  else
    x = xx;

  i = 0;
  do {
    buf[i++] = digits[x % base];
  } while((x /= base) != 0);

  if(sign)
    buf[i++] = '-';

  while(--i >= 0)
    putchar(buf[i]);
}

static void
printptr(uint64 x)
{
  int i;
  putchar('0');
  putchar('x');
  for (i = 0; i < (sizeof(uint64) * 2); i++, x <<= 4)
    putchar(digits[x >> (sizeof(uint64) * 8 - 4)]);
}

// Print to the console. only understands %d, %x, %p, %s.
void
printf(char *fmt, ...)
{
  int i, c;
  char *s;
	va_list ap;

	va_start(ap, fmt);
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
    if(c != '%'){
      putchar(c);
      continue;
    }
    c = fmt[++i] & 0xff;
    if(c == 0)
      break;
    switch(c){
    case 'd':
      printint(va_arg(ap, int), 10, 1);
      break;
    case 'x':
      printint(va_arg(ap, int), 16, 1);
      break;
    case 'p':
      printptr(va_arg(ap, uint64));
      break;
    case 's':
      if((s = va_arg(ap, char*)) == 0)
        s = "(null)";
      for(; *s; s++)
        putchar(*s);
      break;
    case '%':
      putchar('%');
      break;
    default:
      // Print unknown % sequence to draw attention.
      putchar('%');
      putchar(c);
      break;
    }
  }
}