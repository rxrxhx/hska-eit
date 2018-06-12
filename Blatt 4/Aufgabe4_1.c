#include <stdio.h>
#define scanf_s scanf
int main() 
{
	int toConv = 0;
	scanf_s("%d", &toConv);
	printf("Dezimal = %d\n", toConv);
	printf("Oktal = %o\n", toConv);
	printf("Hex = %x\n", toConv);
	getchar();
	return 0;
}
