INC_DIR		:= inc

SRC_DIR		:= src
SRCS		:= ft_strlen.s	\
			   ft_strcpy.s	\
			   ft_strcmp.s	\
			   ft_write.s	\
			   ft_read.s		\
			   ft_strdup.s

OBJ_DIR 	:= obj
OBJS		:= $(addprefix $(OBJ_DIR)/,$(SRCS:.s=.o))

NAME		:= libasm.a

.PHONY: all clean fclean re test bonus

all: $(NAME)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	nasm -f elf64 -MD $(patsubst %.o,%.d,$@) -o $@ $<

$(NAME): $(OBJ_DIR) $(OBJS)
	ar rcs $(NAME) $(OBJS)


TEST_OBJ_DIR	:= $(OBJ_DIR)
TEST_SRCS		:=	main.c
TEST_OBJS		:= $(addprefix $(TEST_OBJ_DIR)/,$(TEST_SRCS:.c=.o))
TEST_NAME		:= test_run

LFLAGS			:= -L . -l asm
INC_FLAGS		:= $(addprefix -I ,$(INC_DIR))

$(TEST_OBJ_DIR):
	mkdir -p $(TEST_OBJ_DIR)

$(TEST_OBJ_DIR)/%.o: %.c
	gcc $(INC_FLAGS) -MMD -o $@ -c $<

test: $(NAME) $(TEST_OBJ_DIR) $(TEST_OBJS)
	gcc -o $(TEST_NAME) $(TEST_OBJS) $(LFLAGS)
	./$(TEST_NAME)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)
	rm -f $(TEST_NAME)

re: fclean all