# Outside comment

def print_s(s):
	print(s)

if __name__ == "__main__":
	# Inside comment
	s = '# Outside comment\n\ndef print_s(s):\n	print()\n\nif __name__ == "__main__":\n	# Inside comment\n	s = ...\n	print_s(s)\n'
	print_s(s)
