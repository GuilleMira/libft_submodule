# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: guilmira <guilmira@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/17 12:59:05 by guilmira          #+#    #+#              #
#    Updated: 2021/06/15 17:00:47 by guilmira         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_atoi.c ft_bzero.c ft_calloc.c \
ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c \
ft_tolower.c ft_toupper.c \
ft_split.c ft_strjoin.c ft_strdup.c ft_strtrim.c ft_substr.c \
ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_strmapi.c \
ft_putnbr_base_fd.c

SRCS_BONUS	= ft_lstnew.c ft_lstadd_back.c ft_lstadd_front.c ft_lstsize.c \
ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c ft_lstlast.c

NAME	= libft.a

OBJS	= ${SRCS:.c=.o}
OBJS_B	= ${SRCS_BONUS:.c=.o}

CC		= gcc
CFLAGS	= -Wall -Werror -Wextra

all: ${NAME}

${OBJS}: ${SRCS}
	${CC} ${CFLAGS} -c ${SRCS}

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

bonus: ${OBJS} ${OBJS_B}
	ar rcs ${NAME} ${OBJS} ${OBJS_B}

${OBJS_B}: ${SRCS_BONUS}
	${CC} ${CFLAGS} -c ${SRCS_BONUS}

clean:
	rm -f ${OBJS} ${OBJS_B}

fclean: clean
	rm -f $(NAME)

re: fclean all bonus

.PHONY: all bonus clean fclean re
