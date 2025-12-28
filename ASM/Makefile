TARGET			= bin
OBJ_DIR			= build

CC				= gcc
FLAGS			= -Wall -Wextra -Werror

ASM				= nasm
ASM_FLAGS		= -f elf64

COLLEEN_BIN		= Colleen
GRACE_BIN		= Grace
SULLY_BIN		= Sully

COLLEEN_SRC		= Colleen/Colleen.s
GRACE_SRC		= Grace/Grace.s
SULLY_SRC		= Sully/Sully.s

COLLEEN_OBJ		= $(OBJ_DIR)/$(COLLEEN_SRC:.s=.o)
GRACE_OBJ		= $(OBJ_DIR)/$(GRACE_SRC:.s=.o)
SULLY_OBJ		= $(OBJ_DIR)/$(SULLY_SRC:.s=.o)

GRACE_FILE		= Grace/Grace_kid.s
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
	@$(CC) $(FLAGS) -no-pie -o $@ $^
	@echo "$(APPLE_GREEN)Colleen completed successfully!$(RESET)"

$(TARGET)/$(GRACE_BIN): $(GRACE_OBJ)
	@$(CC) $(FLAGS) -no-pie -o $@ $^
	@echo "$(APPLE_GREEN)Grace completed successfully!$(RESET)"

$(TARGET)/$(SULLY_BIN): $(SULLY_OBJ)
	@$(CC) $(FLAGS) -no-pie -o $@ $^
	@echo "$(APPLE_GREEN)Sully completed successfully!$(RESET)"

$(OBJ_DIR)/%.o: %.s Makefile
	@echo "$(YELLOW) Compiling $<$(RESET)"
	@mkdir -p $(dir $@)
	@$(ASM) $(ASM_FLAGS) $< -o $@

clean:
	@rm -rf $(OBJ_DIR)
	@echo "$(BLUE)Cleaning object files$(RESET)"

fclean: clean
	@rm -rf $(TARGET)
	@rm -f $(GRACE_FILE) $(SULLY_FILES)
	@echo "$(BLUE)Everything is clean!$(RESET)"

re: fclean all

.PHONY: all build clean fclean re
