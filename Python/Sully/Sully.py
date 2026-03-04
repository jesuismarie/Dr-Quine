import os
import sys

if __name__ == "__main__":
	i = 5

	if i - 1 < 0:
		sys.exit(0)

	s = "import os%cimport sys%c%cif __name__ == %c__main__%c:%c	i = %d%c%c	if i - 1 < 0:%c		sys.exit(0)%c%c	s = %c%s%c%c%c	with open(f%cSully/Sully_{i - 1}.py%c, %cw%c) as f:%c		f.write(s %% (10, 10, 10, 34, 34, 10, i - 1, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 34, 34, 34, 34, 10, 10, 10, 34, 34, 10))%c%c	os.system(f%cpython3 Sully/Sully_{i - 1}.py%c)%c"

	with open(f"Sully/Sully_{i - 1}.py", "w") as f:
		f.write(s % (10, 10, 10, 34, 34, 10, i - 1, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 34, 34, 34, 34, 10, 10, 10, 34, 34, 10))

	os.system(f"python3 Sully/Sully_{i - 1}.py")
