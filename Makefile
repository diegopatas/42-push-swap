include Makefile_setup

NAME			= push_swap
SOURCE			= $(addprefix $(PATH_SOURCES)/, $(FILE_SOURCES))
FILE_HEADER		= $(PATH_INCLUDES)/push_swap.h
FILE_OBJECTS	= $(SOURCE:$(PATH_SOURCES)/%.c=$(PATH_OBJECTS)/%.o)

FILE_SOURCES	= push_swap.c

all: $(NAME)

$(NAME): $(LIBFT) $(PRINTF) $(PATH_OBJECTS) $(FILE_OBJECTS) $(FILE_HEADER)
	$(LINKER) $(FLAG_C) $(FILE_OBJECTS) $(LIBFT) $(PRINTF) -o $@

$(LIBFT):
	@$(MAKE) -C $(PATH_LIBFT) all

$(PRINTF):
	@$(MAKE) -C $(PATH_PRINTF) all

$(PATH_OBJECTS):
	$(MAKE_DIR) $(PATH_OBJECTS)

$(PATH_OBJECTS)/%.o: $(PATH_SOURCES)/%.c $(FILE_HEADER)
	$(COMPILER) $(FLAG_C) $(INCLUDES) $< -o $@

clean:
	$(REMOVE_FORCE) $(PATH_OBJECTS)
	@$(MAKE) -C $(PATH_LIBFT) clean
	@$(MAKE) -C $(PATH_PRINTF) clean

fclean: clean
	$(REMOVE_FORCE) $(NAME)
	@$(MAKE) -C $(PATH_LIBFT) fclean
	@$(MAKE) -C $(PATH_PRINTF) fclean

re: fclean all

.PHONY: all fclean clean re run leak test debug