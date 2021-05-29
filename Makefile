
.PHONY: all, $(NAME), norm, clean, fclean, re

NAME = libasm.a

SRC_PATH = ./src/
OBJ_PATH = ./obj/
INC_PATH = ./inc/

SRC = $(addprefix $(SRC_PATH), $(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH), $(OBJ_NAME))
INC = $(addprefix -I, $(INC_PATH))

SRC_NAME =				\
			ft_strlen.s \
			ft_strcpy.s	\

OBJ_NAME = $(SRC_NAME:.s=.o)

all: $(NAME)

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	mkdir -p $(OBJ_PATH)
	nasm -f macho64 -o $@ $<

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

test:
	gcc -I./libasm.h libasm.a src/main.c -o test

clean: 
	/bin/rm -rf $(OBJ_PATH)

fclean: clean
	/bin/rm -rf $(OBJ_PATH)
	/bin/rm -f $(NAME)

re: fclean all