#include <stdio.h>
#define scanf_s scanf

int main()
{
	int n = 1;
	printf("n = ");
	scanf_s("%d", &n);
	int faculty = 1;
	while (n > 0) {
		faculty = n * faculty;
		n--;
	}
	printf("%d\n", faculty);
	getchar();
	return 0;
}
