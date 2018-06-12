
#include <stdio.h>
#define scanf_s scanf

int is_div6(unsigned int input)
{
	int rest = input;
	while(rest > 5) 
	{
		rest = rest - 6;
	}
	
	if(rest == 0) 
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

int main() 
{
	int number = 0;
	unsigned int count = 0;
	scanf_s("%d", &number);
	count = is_div6(number);
	printf("%d", count);
	printf("\n");
	getchar();
	return 0;
}
