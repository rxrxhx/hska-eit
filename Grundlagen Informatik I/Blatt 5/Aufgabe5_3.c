#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define scanf_s scanf

int calcISBNCheck(char[] input)
{
	
}

int calcEANCheck(char[] input)

int main() 
{
	static char x = '%';
	char k[14];
	scanf_s("%s", &k);
	
	for (int i = 0; i < 49; i++)
	{
		stat[i] = 0;
	}
	
	for (int i = 0; i < k; i++)
	{
		int *tmp = lotto();
		for (int m = 0; m < 6; m++)
		{
			stat[*(tmp+m) - 1]++;
			abs++;
		}
		free(*tmp);
	}
	
	for (int i = 0; i < 49; i++)
	{
		if (stat[i] != 0)
		{
			printf("%d, %d, %f \n", i + 1, stat[i], (((float)stat[i] / (float)abs)*100.0));
		}
	}
	
}
