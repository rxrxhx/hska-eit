#include <stdio.h>
#define scanf_s scanf

int main()
{
	int x = 0;
	int y = 0;
	printf("x = ");
	scanf_s("%d", &x);

	do {
		y = y + x;
		x--;
	} while (x > 0);

	printf("\n%d\n", y);
	
	getchar();
	return 0;
}
