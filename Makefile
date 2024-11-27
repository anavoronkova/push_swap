FILES = src/1_main.c src/2_check_input.c src/3_is_sorted.c src/4_sort_big.c src/5_a_to_b.c src/6_sort_three.c src/7_b_to_a.c src/commands.c src/get_formula.c src/print_commands.c src/utils_last.c src/utils_stack.c src/utils_size_max_min_map.c
OBJECTS = $(addprefix obj/, $(FILES:.c=.o))
CC = cc
CFLAGS = -Wall -Wextra -Werror
NAME = push_swap
PRINTF = src/ft_printf/ft_printf.a
LIBFT = src/libft/libft.a
INCLUDES = -I src/ft_printf/includes -I src/libft/includes
MAKE = make

all: $(NAME)

$(NAME): $(PRINTF) $(LIBFT) $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) $(PRINTF) $(LIBFT) $(INCLUDES) -o $(NAME)

$(PRINTF):
	$(MAKE) -C ft_printf

$(LIBFT):
	$(MAKE) -C libft

obj/%.o: %.c
	mkdir -p obj
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

clean:
	$(MAKE) -C ft_printf clean
	$(MAKE) -C libft clean
	rm -f $(OBJECTS)

fclean: clean
	$(MAKE) -C ft_printf fclean
	$(MAKE) -C libft fclean
	rm -f $(NAME)

re: fclean
	$(MAKE) all
