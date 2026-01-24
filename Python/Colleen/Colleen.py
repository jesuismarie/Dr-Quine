# Outside comment

def p(s):
	print(s % (10, 10, 10, 10, 10, 34, 34, 10, 10, 34, s, 34, 10, 10))

if __name__ == "__main__":
	# Inside comment
	s = "# Outside comment%c%cdef p(s):%c	print(s %% (10, 10, 10, 10, 10, 34, 34, 10, 10, 34, s, 34, 10, 10))%c%cif __name__ == %c__main__%c:%c	# Inside comment%c	s = %c%s%c%c	p(s)%c"
	p(s)
