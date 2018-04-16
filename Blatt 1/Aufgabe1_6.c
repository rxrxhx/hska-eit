#include <stdio.h>
#define scanf_s scanf

/*
Operations:
0 = undef.
1 = +
2 = -
3 = *
4 = /
>=5 = undef.
*/
int main()
{
	int a = 0;
	int b = 0;
	int o = 0;

	while (1) {

		a = 0;
		b = 0;
		o = 0;
		
		//read a
		printf("a = ");
		scanf_s("%d", &a);

		//read b
		printf("b = ");
		scanf_s("%d", &b);

		//read operation
		printf("operation = ");
		scanf_s("%d", &o);

		switch (o)
		{
		case 1:
			printf("result = %d\n", a + b);
			break;
		case 2:
			printf("result = %d\n", a - b);
			break;
		case 3:
			printf("result = %d\n", a * b);
			break;
		case 4:
			if (b == 0) {
				printf("Poof!\n");
			}
			else {
				printf("result = %d\n", a / b);
			}
			break;
		default:
			printf("Nothing to do!\n");
			break;
		}
	}
}
