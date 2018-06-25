
#include <stdio.h>
#define scanf_s scanf

int bits(unsigned int input)
{
	unsigned int c;
	for (c = 0; input; input >>= 1)
		c += input & 1;
	return c;
}

int main() 
{
	int number = 0;
	unsigned int count = 0;
	scanf_s("%d", &number);
	count = bits(number);
	printf("%d", count);
	printf("\n");
	getchar();
	return 0;
}
