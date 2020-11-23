#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>

int		ft_strlen(char *str);
int		ft_strcmp(char *s1, char *s2);
char	*ft_strcpy(char *dest, char *src);
char	*ft_strdup(char *str);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, const void *buf, size_t count);

#endif
