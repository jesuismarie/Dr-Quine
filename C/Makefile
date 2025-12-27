CC				= gcc
FLAGS			= -Wall -Wextra -Werror -g -fsanitize=address

COLLEEN_NAME	= Colleen/Colleen
GRACE_NAME		= Grace/Grace
SULLY_NAME		= Sully/Sully

COLLEEN_SRC		= Colleen/Colleen.c
GRACE_SRC		= Grace/Grace.c
SULLY_SRC		= Sully/Sully.c

COLLEEN_OBJ		= $(COLLEEN_SRC:.c=.o)
GRACE_OBJ		= $(GRACE_SRC:.c=.o)
SULLY_OBJ		= $(SULLY_SRC:.c=.o)

GRACE_FILE		= $(GRACE_NAME)_kid.c
SULLY_FILES		= $(wildcard Sully/Sully_*)

RESET			= \033[0m
BLUE			= \033[34m
YELLOW			= \033[38;2;255;239;0m
APPLE_GREEN		= \033[38;2;141;182;0m

all: $(COLLEEN_NAME) $(GRACE_NAME) $(SULLY_NAME)

$(COLLEEN_NAME): $(COLLEEN_OBJ)
	@$(CC) $(FLAGS) -o $@ $^
	@echo "$(APPLE_GREEN)Colleen completed successfully!$(RESET)"

$(GRACE_NAME): $(GRACE_OBJ)
	@$(CC) $(FLAGS) -o $@ $^
	@echo "$(APPLE_GREEN)Grace completed successfully!$(RESET)"

$(SULLY_NAME): $(SULLY_OBJ)
	@$(CC) $(FLAGS) -o $@ $^
	@echo "$(APPLE_GREEN)Sully completed successfully!$(RESET)"

%.o: %.c Makefile
	@echo "$(YELLOW) Compiling $<$(RESET)"
	@$(CC) $(FLAGS) -c $< -o $@

clean:
	@rm -f $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ)
	@echo "$(BLUE)Cleaning object files$(RESET)"

fclean: clean
	@rm -f $(COLLEEN_NAME) $(GRACE_NAME) $(GRACE_FILE) $(SULLY_NAME) $(SULLY_FILES)
	@echo "$(BLUE)Everything is clean!$(RESET)"

re: fclean all

.PHONY: all clean fclean re