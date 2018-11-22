#include <stdio.h>
#define scanf_s scanf

int main()
{
	int a = 0;
	int b = 0;

	printf("a = ");
	scanf_s("%d", &a);

	printf("b = ");
	scanf_s("%d", &b);

	if (a > b) {
		printf("%d\n", a);
	}
	else if (a == b)
	{
		printf("a und b sind gleich %d \n", a);
	}
	else {
		printf("%d\n", b);
	}
	getchar();
	return 0;
}
