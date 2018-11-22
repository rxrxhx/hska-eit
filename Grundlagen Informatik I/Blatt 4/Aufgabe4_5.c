
#include <stdio.h>
#define scanf_s scanf

int is_even(unsigned int input)
{
	if(input % 2 == 0)
		return 1;
	else
		return 0;
}

int main() 
{
	int number = 0;
	unsigned int count = 0;
	scanf_s("%d", &number);
	count = is_even(number);
	printf("%d", count);
	printf("\n");
	getchar();
	return 0;
}
