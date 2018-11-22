#include <stdio.h>
#include <stdlib.h>

int main ()
{
	int n = 0;
	
	printf("n : ");
	scanf("%d", &n);
	
	int *ptr = (int*) malloc(sizeof(int)* n);
	int *orptr = ptr;
	
	if (ptr != NULL) 
	{
		for (int i = 0; i < n; i++)
		{
			*ptr = (1<<i);
			printf("%d ptr: %p\n", *ptr, ptr);
			ptr++;
		}
		printf("%p\n", orptr);
	}
	
	printf("\n");
	
	int index = 0;
	int exit = 1;
	while(exit)
	{
		printf("Geben sie den Index ein:");
		scanf("%d", &index);
		if (index < n && index >= 0) 
		{
			printf("Potenz am Index: %d\n", *(orptr + index));
		}
		else
			exit = 0;
	}
	
    return 0;
}