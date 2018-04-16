#include <stdio.h>
#define scanf_s scanf

int main()
{
	int n = 1;
	printf("n = ");
	scanf_s("%d", &n);
	int faculty = 1;
	for (int i = 1; i <= n; i++) {
		faculty = i * faculty;
	}
	printf("%d\n", faculty);
	getchar();
	return 0;
}
