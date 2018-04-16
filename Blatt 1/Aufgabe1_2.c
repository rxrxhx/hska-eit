#include <stdio.h>
#define PI 3.14159265358979323846

int main()
{
	for (int r = 20; r <= 40; r++) {
		printf("%f\n", 2 * PI * r);
	}
	getchar();
}
