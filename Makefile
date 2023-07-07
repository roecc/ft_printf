# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ligabrie <ligabrie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/10 13:45:09 by admin             #+#    #+#              #
#    Updated: 2023/03/01 16:36:31 by ligabrie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CCFLAG = -Wall -Wextra -Werror

AR = ar

ARFLAG = crs

SRCS_A = \
ft_printf.c \
ft_putstr.c \
ft_putnbr.c \
ft_putptr.c


SRCS = $(SRCS_A)

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAG) $@ $^

%.o: %.c
	$(CC) $(CCFLAG) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re