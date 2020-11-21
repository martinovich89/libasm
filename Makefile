NAME =		libasm.a

NASM =		nasm

NASMFLAGS =	-f elf64

CC =		clang

CFLAGS =	-Wall -Wextra -Werror

RM =		rm -f

TEST =		test

TXT =		hello.txt \
			empty.txt \

SRCS =		ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_strdup.s \
			ft_write.s \

OBJS =		${SRCS:.s=.o}

%.o : %.s
			${NASM} ${NASMFLAGS} $< -o $@

all : ${OBJS}
			ar rcs ${NAME} ${OBJS} && ranlib ${NAME}

test :
			${CC} main.c ${OBJS} -o test

clean :
			${RM} ${OBJS}

cleantxt :
			${RM} ${TXT}

cleantest :
			${RM} ${TEST}

cleanlib :
			${RM} ${NAME}

fclean : clean cleantxt cleantest cleanlib

re : fclean all
