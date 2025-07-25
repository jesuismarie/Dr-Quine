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

	char *code = "#include <stdio.h>%c#include <stdlib.h>%c#include <unistd.h>%c%cint main() {%c%cint i = %d;%c%cchar src[64], exe[64];%c%cFILE *f;%c%c%csprintf(src, %cSully/Sully_%%d.c%c, i);%c%cf = fopen(src, %cw%c);%c%cif (!f) return 1;%c%c%cchar *code = %c%s%c;%c%c%cfprintf(f, code, 10, 10, 10, 10, 10, 9, i - 1, 10, 9, 10, 9, 10, 10, 9, 34, 34, 10, 9, 34, 34, 10, 9, 10, 10, 9, 34, code, 34, 10, 10, 9, 10, 9, 10, 10, 9, 34, 34, 10, 9, 10, 10, 9, 10, 9, 9, 34, 34, 10, 9, 9, 10, 9, 10, 9, 10, 10);%c%cfclose(f);%c%c%csprintf(exe, %cgcc -o Sully/Sully_%%d Sully/Sully_%%d.c%c, i, i);%c%csystem(exe);%c%c%cif (i > 0) {%c%c%csprintf(exe, %c./Sully/Sully_%%d%c, i);%c%c%csystem(exe);%c%c}%c%creturn 0;%c}%c";

	fprintf(f, code, 10, 10, 10, 10, 10, 9, i - 1, 10, 9, 10, 9, 10, 10, 9, 34, 34, 10, 9, 34, 34, 10, 9, 10, 10, 9, 34, code, 34, 10, 10, 9, 10, 9, 10, 10, 9, 34, 34, 10, 9, 10, 10, 9, 10, 9, 9, 34, 34, 10, 9, 9, 10, 9, 10, 9, 10, 10);
	fclose(f);

	sprintf(exe, "gcc -o Sully/Sully_%d Sully/Sully_%d.c", i, i);
	system(exe);

	if (i > 0) {
		sprintf(exe, "./Sully/Sully_%d", i);
		system(exe);
	}
	return 0;
}
