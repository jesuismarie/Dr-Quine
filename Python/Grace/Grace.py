FILENAME = "Grace/Grace_kid.py"
CODE = "FILENAME = %cGrace/Grace_kid.py%c%cCODE = %c%s%c%c%cdef grace():%c	with open(FILENAME, %cw%c) as f:%c		f.write(CODE %% (34, 34, 10, 34, CODE, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10))%c%c# Grace comment%cgrace()%c"

def grace():
	with open(FILENAME, "w") as f:
		f.write(CODE % (34, 34, 10, 34, CODE, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10))

# Grace comment
grace()
