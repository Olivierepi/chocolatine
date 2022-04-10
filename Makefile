##
## EPITECH PROJECT, 2022
## B-DOP-200-MPL-2-1-chocolatine-olivier.reynaud
## File description:
## Makefile
##

SRC =   main.c

OBJ =    $(SRC:.c=.o)

BIN_NAME    =    binary_test

all: $(BIN_NAME) $(OBJ)

$(BIN_NAME): $(OBJ)
	@ $(CC) -o $(BIN_NAME) $(OBJ) $(LDFLAGS) $(CFLAGS)
	@ echo "\033[1;32m[ SUCCESS ] \033[0m\033[1;34mBinary :\033[1;32m BINARY TEST \033[1;34m created sucesfully.\033[0m"

clean:
	@ rm -f $(OBJ)

fclean: clean
	@ echo "\033[3;31m./$(BIN_NAME)\033[0m"
	@ rm -f $(BIN_NAME)

re: fclean all

tests_run:
	@ echo "THIS IS A TEST"