#include <stdio.h>

int main()
{
	char string[10];
	char after[10];
	for (int i = 0; i < sizeof(string); i++)
	{
		char tmp = getchar();
		if (!(tmp == 13 || tmp == 0)) 
		{
			string[i] = tmp;
		}
	}
	int k = 9;
	while (k >= 0)
	{
		printf("%c", string[k]);
		after[9-k] = string[k];
		k--;
	}
	
	printf("\n");
	getchar();
}
