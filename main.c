#include "inc/libasm.h"


int	main(int ac, char **av)
{
	{
		printf("\nSTRLEN\n");
		printf("%zu\n", strlen("qwerty"));
		printf("%zu\n", ft_strlen("qwerty"));
		printf("%zu\n", strlen(""));
		printf("%zu\n", ft_strlen(""));
	}

	{
		printf("\nSTRCPY\n");
		char lol[15];
		char kek[15];
		printf("%s\n", strcpy(lol, "qwerty"));
		printf("%s\n", ft_strcpy(kek, "qwerty"));
		printf("%s\n", strcpy(lol, ""));
		printf("%s\n", ft_strcpy(kek, ""));
	}


	{
		printf("\nSTRCMP\n");
		char *kek = "121312321";
		printf("%d\n", strcmp(kek, "qwerty"));
		printf("%d\n", ft_strcmp(kek, "qwerty"));
		printf("%d\n", strcmp(kek, ""));
		printf("%d\n", ft_strcmp(kek, ""));
	}

	{
		printf("\nWRITE\n");
		printf("%zd\n", write(1, "12345\n", 7));
		printf("%zd\n", ft_write(1, "12345\n", 7));
		printf("%zd\n", write(-1, "12345\n", 7));
		printf("%zd\n", ft_write(-1, "12345\n", 7));
	}

	{
		printf("\nREAD\n");
		// make re ; make test ; ./a.out Makfile
		int fd = open(av[1], O_RDONLY);
		char file[10];
		printf("%zd\n", read(fd, file, 10));
		printf("%zd\n", ft_read(fd, file, 10));
		printf("%zd\n", read(-1, file, 10));
		printf("%zd\n", ft_read(-1, file, 10));
	}

	{
		printf("\nSTRDUP\n");
		printf("%s\n", strdup("qwerty"));
		printf("%s\n", ft_strdup("qwerty"));
		printf("%s\n", strdup(""));
		printf("%s\n", ft_strdup(""));
	}

	return 0;
}