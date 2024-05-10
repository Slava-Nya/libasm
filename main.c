#include "inc/libasm.h"


int	main(int ac, char **av)
{
	{
		printf("\nSTRLEN");
		printf("\n strlen- CASE 1: ");
		printf("strlen: %zu\n", strlen("qwerty"));
		printf(" ft_strlen- CASE 1: ");
		printf("ft_strlen: %zu\n", ft_strlen("qwerty"));

		printf("\n strlen- CASE 2: ");
		printf("%zu\n", strlen(""));
		printf(" ft_strlen- CASE 2: ");
		printf("%zu\n", ft_strlen(""));
	}

	{
		printf("\nSTRCPY");
		char lol[15];
		char kek[15];
		printf("\n strcpy- CASE 1: ");
		printf("%s\n", strcpy(lol, "qwerty"));
		printf(" ft_strcpy- CASE 1: ");
		printf("%s\n", ft_strcpy(kek, "qwerty"));

		printf("\n strcpy- CASE 2: ");
		printf("%s\n", strcpy(lol, ""));
		printf(" ft_strcpy- CASE 2: ");
		printf("%s\n", ft_strcpy(kek, ""));
	}


	{
		printf("\nSTRCMP");
		char *kek = "121312321";
		printf("\n strcmp- CASE 1: ");
		printf("%d\n", strcmp(kek, "qwerty"));
		printf(" ft_strcmp- CASE 1: ");
		printf("%d\n", ft_strcmp(kek, "qwerty"));

		printf("\n strcmp- CASE 2: ");
		printf("%d\n", strcmp(kek, ""));
		printf(" ft_trcmp- CASE 2: ");
		printf("%d\n", ft_strcmp(kek, ""));
	}

	{
		printf("\nWRITE");
		printf("\n write- CASE 1: ");
		printf("%zd\n", write(1, "12345", 6));
		printf(" ft_write- CASE 2: ");
		printf("%zd\n", ft_write(1, "12345", 6));

		printf("\n write- CASE 1: ");
		printf("%zd\n", write(-1, "12345", 6));
		printf(" ft_write- CASE 2: ");
		printf("%zd\n", ft_write(-1, "12345", 6));
	}

	{
		printf("\nREAD");
		int fd = open(av[1], O_RDONLY);
		char file[10];
		printf("\n read- CASE 1: ");
		printf("%zd\n", read(fd, file, 10));
		printf(" ft_read- CASE 2: ");
		printf("%zd\n", ft_read(fd, file, 10));

		printf("\n read- CASE 1: ");
		printf("%zd\n", read(-1, file, 10));
		printf(" ft_read- CASE 2: ");
		printf("%zd\n", ft_read(-1, file, 10));
	}

	{
		printf("\nSTRDUP");
		printf("\n strdup- CASE 1: ");
		printf("%s\n", strdup("qwerty"));
		printf(" ft_strdup- CASE 2: ");
		printf("%s\n", ft_strdup("qwerty"));

		printf("\n strdup- CASE 1: ");
		printf("%s\n", strdup(""));
		printf(" ft_strdup- CASE 2: ");
		printf("%s\n", ft_strdup(""));
	}

	return 0;
}