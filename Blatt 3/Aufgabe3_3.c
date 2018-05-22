#include <stdio.h>

int main()
{
	char string[99];
	for (int i = 0; i < sizeof(string); i++)
	{
		string[i] = getchar();
		if (string[i] == 13)
		{
			break;
		}
	}
	int k = 0;
	while (string[k] != '\n')
	{
		printf("%c", string[k]);
		k++;
	}
	getchar();
}
