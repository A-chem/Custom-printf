NAME = src/libftprintf.a

all:
	$(MAKE) -C src all

clean:
	$(MAKE) -C src clean

fclean:
	$(MAKE) -C src fclean

re:
	$(MAKE) -C src re

.PHONY: all clean fclean re
