#include <stdio.h>
#define scanf_s scanf

void print_bit(int input)
{
	int bits[32];
	int tmp = input;
	for (int i = 0; i < 32; i++) {
		bits[i] = tmp % 2;
		tmp = tmp / 2;
	}
	int k = 0;
	for (int i = 31; i >= 0; i--) {
		printf("%d", bits[i]);
		k++;
		if (k == 4) {
			printf(" ");
			k = 0;
		}
	}
	
	printf("\n");
}

int main() 
{
	int toConv = 0;
	scanf_s("%d", &toConv);
	printf("\n");
	print_bit(toConv);
	
	return 0;
}
