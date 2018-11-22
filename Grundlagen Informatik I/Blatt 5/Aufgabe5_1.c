
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define scanf_s scanf

int compare(const void *a,const void *b) 
{
	int *x = (int *) a;
	int *y = (int *) b;
	return *x - *y;
}

int main() 
{
	time_t t;
	int zahlen[6];
	srand((unsigned) time(&t));
	
	for(int i = 0; i < 6; i++)
	{		
		zahlen[i] = 0;
	}
	
	for(int i = 0; i < 6; i++)
	{
		int found = 0;
		while(found == 0)
		{
			int tmp;
			fail: tmp = (rand() % 48) + 1;
			for (int k = 0; k < 6; k++)
			{
				if (tmp == zahlen[k]) 
					goto fail;
			}
			found = 1;
			zahlen[i] = tmp;
		}
	}
	
	qsort(zahlen,sizeof(zahlen)/sizeof(*zahlen),sizeof(*zahlen),compare);

	for (int i = 0; i < 6; i++)
		printf(" %d", zahlen[i]);
	
	printf("\n");
	return 0;
}
