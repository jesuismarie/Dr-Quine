#include <stdio.h>

// Outside comment

void print(char *s) { printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10); }

int main()
{
	// Inside comment
	char *s="#include <stdio.h>%c%c// Outside comment%c%cvoid print(char *s) { printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10); }%c%cint main()%c{%c\t// Inside comment%c\tchar *s=%c%s%c;%c\tprint(s);%c\treturn 0;%c}%c";
	print(s);
	return 0;
}
