PYTHON			= python3

COLLEEN_SRC		= Colleen/Colleen.py
GRACE_SRC		= Grace/Grace.py
SULLY_SRC		= Sully/Sully.py

GRACE_FILE		= Grace/Grace_kid.py
SULLY_FILES		= $(wildcard Sully/Sully_*)

RESET = \033[0m
BLUE = \033[34m
APPLE_GREEN = \033[38;2;141;182;0m

colleen: $(COLLEEN_SRC)
	@$(PYTHON) $(COLLEEN_SRC)
	@echo "$(APPLE_GREEN)Colleen completed successfully!$(RESET)"

grace: $(GRACE_SRC)
	@$(PYTHON) $(GRACE_SRC)
	@echo "$(APPLE_GREEN)Grace completed successfully!$(RESET)"

sully: $(SULLY_SRC)
	@$(PYTHON) $(SULLY_SRC)
	@echo "$(APPLE_GREEN)Sully completed successfully!$(RESET)"

fclean:
	@rm -f $(GRACE_FILE) $(SULLY_FILES)
	@echo "$(BLUE)Everything is clean!$(RESET)"

.PHONY: colleen grace sully fclean
