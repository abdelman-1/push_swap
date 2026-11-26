NAME = push_swap
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = mandatory
BNS_DIR = bonus

LIBFT = ./libft/libft.a

SRCS = $(SRC_DIR)/push_swap.c \
		$(SRC_DIR)/parse_flag.c $(SRC_DIR)/parse_args.c $(SRC_DIR)/parse_int.c \
		$(SRC_DIR)/append_node.c $(SRC_DIR)/assign_indices.c \
		$(SRC_DIR)/free_stack.c $(SRC_DIR)/has_duplicate.c \
		$(SRC_DIR)/op_push.c $(SRC_DIR)/op_swap.c $(SRC_DIR)/op_rotate.c $(SRC_DIR)/op_rev_rotate.c \
		$(SRC_DIR)/disorder.c \

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	cc $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME)

%.o: %.c $(SRC_DIR)/push_swap.h
	cc $(CFLAGS) -c $< -o $@

$(LIBFT):
	$(MAKE) -C ./libft

clean:
	rm -f $(OBJS)
	$(MAKE) -C ./libft clean

fclean: clean
	rm -f $(NAME)
	$(MAKE) -C ./libft fclean

re: fclean all

.PHONY: all clean fclean re
