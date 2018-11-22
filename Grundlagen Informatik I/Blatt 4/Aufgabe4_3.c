#include <stdio.h>
#define scanf_s scanf

int hochz(int input, int exp)
{
	int output = 1;
	for (int k = 0; k < exp; k++) {
		output = output * input;
	}
	return output;
}

int main() 
{
	char boolean[17];
	int number = 0;
	for (int z = 0; z < 17; z++)
	{
		boolean[z] = getchar();
	}
	for (int i = 15; i >= 0; i--) {
		if (boolean[i] == '1') {
			number = number + hochz(2,15-i);
		}
		else if(boolean[i] == '0') {}
		else 
		{
			printf("Error\n%d", i);
			return 1;
		}
		
	}
	
	if(boolean[0] == '1') 
	{
		number = number | 0b11111111111111110000000000000000;
	}
	

	printf("%d", number);
	printf("\n");
	getchar();
	return 0;
}
