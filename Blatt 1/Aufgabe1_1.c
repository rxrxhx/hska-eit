#include <stdio.h>

int main()
{
	short i = 1;
	while(i > 0) {
		i++;
	}

	i--;
	printf("max short = %d", i);
	getchar();

	return 0;
}
