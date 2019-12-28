int		ft_write(int fd, char *str, int len);
int		ft_read(int fd, char *buf, int len);
unsigned int 	ft_strlen(char *str);
int				ft_strcmp(char *s, char *s2);
void			*ft_memcpy(void *dest, void *src, unsigned int size);
char			*ft_strdup(char *str);
char *ft_strcpy(char *dest, char *src);
#include <string.h>
#include <stdlib.h>
int main()
{
/*	int ret = 0;
	int retlen = 0;
	char buf[256];
	ft_write(1, "salut", ft_strlen("salut"));
	ret = ft_read(1, buf, 256);
	printf("\n\n%d\n%s\n", ret, buf);
	retlen = ft_strlen(buf);
	printf("strlen buf = %d", retlen);
*/
//	printf("%d\n", ft_strcmp("z", "j"));
//	printf("%d", strcmp("z", "j"));
	char *fraiche;
	fraiche = ft_strdup("this is a test aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaamotherfucker");
	char *a = malloc(sizeof(char) * 12);
	char *b = "";
	printf("%s", ft_strcpy(a, b));
}
