#include <stdio.h>

#define FILENAME "Grace/Grace_kid.c"
#define CODE "#include <stdio.h>%c%c#define FILENAME %cGrace/Grace_kid.c%c%c#define CODE %c%s%c%c#define GRACE() int main() { FILE *f = fopen(FILENAME, %cw%c); if (f) { fprintf(f, CODE, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 34, 34, 10, 10, 10, 10); fclose(f); } return 0; }%c%c// Grace comment%cGRACE()%c"
#define GRACE() int main() { FILE *f = fopen(FILENAME, "w"); if (f) { fprintf(f, CODE, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 34, 34, 10, 10, 10, 10); fclose(f); } return 0; }

// Grace comment
GRACE()
