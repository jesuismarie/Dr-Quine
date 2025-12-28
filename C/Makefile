TARGET			= bin
OBJ_DIR			= build

CC				= gcc
FLAGS			= -Wall -Wextra -Werror

COLLEEN_BIN		= Colleen
GRACE_BIN		= Grace
SULLY_BIN		= Sully

COLLEEN_SRC		= Colleen/Colleen.c
GRACE_SRC		= Grace/Grace.c
SULLY_SRC		= Sully/Sully.c

COLLEEN_OBJ		= $(OBJ_DIR)/$(COLLEEN_SRC:.c=.o)
GRACE_OBJ		= $(OBJ_DIR)/$(GRACE_SRC:.c=.o)
SULLY_OBJ		= $(OBJ_DIR)/$(SULLY_SRC:.c=.o)

GRACE_FILE		= Grace/Grace_kid.c
SULLY_FILES		= $(wildcard Sully/Sully_*)

RESET			= \033[0m
BLUE			= \033[34m
YELLOW			= \033[38;2;255;239;0m
APPLE_GREEN		= \033[38;2;141;182;0m

all: build $(TARGET)/$(COLLEEN_BIN) $(TARGET)/$(GRACE_BIN) $(TARGET)/$(SULLY_BIN)

build:
	@mkdir -p $(TARGET)
	@mkdir -p $(OBJ_DIR)/Colleen $(OBJ_DIR)/Grace $(OBJ_DIR)/Sully


$(TARGET)/$(COLLEEN_BIN): $(COLLEEN_OBJ)
	@$(CC) $(FLAGS) -o $@ $^
	@echo "$(APPLE_GREEN)Colleen completed successfully!$(RESET)"

$(TARGET)/$(GRACE_BIN): $(GRACE_OBJ)
	@$(CC) $(FLAGS) -o $@ $^
	@echo "$(APPLE_GREEN)Grace completed successfully!$(RESET)"

$(TARGET)/$(SULLY_BIN): $(SULLY_OBJ)
	@$(CC) $(FLAGS) -o $@ $^
	@echo "$(APPLE_GREEN)Sully completed successfully!$(RESET)"

$(OBJ_DIR)/%.o: %.c Makefile
	@echo "$(YELLOW) Compiling $<$(RESET)"
	@mkdir -p $(dir $@)
	@$(CC) $(FLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJ_DIR)
	@echo "$(BLUE)Cleaning object files$(RESET)"

fclean: clean
	@rm -rf $(TARGET)
	@rm -f $(GRACE_FILE) $(SULLY_FILES)
	@echo "$(BLUE)Everything is clean!$(RESET)"

re: fclean all

.PHONY: all build clean fclean re
