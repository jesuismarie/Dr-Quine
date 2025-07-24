#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
	int i = 5;
	char src[64], exe[64];
	FILE *f;

	sprintf(src, "Sully/Sully_%d.c", i);
	f = fopen(src, "w");
	if (!f) return 1;

	char *code = "#include <stdio.h>%c#include <stdlib.h>%c#include <unistd.h>%c%cint main() {%c\tint i = %d;%c\tchar src[64], exe[64];%c\tFILE *f;%c%c\tsprintf(src, %cSully/Sully_%%d.c%c, i);%c\tf = fopen(src, %cw%c);%c\tif (!f) return 1;%c%c\tchar *code = %c%s%c;%c%c\tfprintf(f, code, 10, 10, 10, 10, 10, i - 1, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10);%c\tfclose(f);%c%c\tsprintf(exe, %cgcc -o Sully/Sully_%%d Sully/Sully_%%d.c%c, i, i);%c\tsystem(exe);%c%c\tif (i > 0) {%c\t\tsprintf(exe, %c./Sully/Sully_%%d%c, i);%c\t\tsystem(exe);%c\t}%c\treturn 0;%c}%c";

	fprintf(f, code, 10, 10, 10, 10, 10, i - 1, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10);
	fclose(f);

	sprintf(exe, "gcc -o Sully/Sully_%d Sully/Sully_%d.c", i, i);
	system(exe);

	if (i > 0) {
		sprintf(exe, "./Sully/Sully_%d", i);
		system(exe);
	}
	return 0;
}
