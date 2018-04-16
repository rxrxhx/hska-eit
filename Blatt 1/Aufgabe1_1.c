#include <stdio.h>

int main()
{
	unsigned short i = 1;
	unsigned short smax = 0;
	while(1) {
		if(i == 0) {
			break;
		}
		smax = i;
		i++;
		
	}
	
	printf("max short = %d", smax);
	getchar();
}
