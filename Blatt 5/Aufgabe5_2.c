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

int * lotto()
{
	static int zahlen[6];

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
			fail: tmp = (rand() % 49) + 1;
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
	return zahlen;
}

int main() 
{
	time_t t;
	srand(time(NULL));
	int stat[49];
	int k = 1;
	int abs = 0;
	
	scanf_s("%d", &k);
	
	for (int i = 0; i < 49; i++)
	{
		stat[i] = 0;
	}
	
	for (int i = 0; i < k; i++)
	{
		int *tmp = lotto();
		for (int m = 0; m < 6; m++)
		{
			stat[*(tmp+m) - 1]++;
			abs++;
		}
	}
	
	for (int i = 0; i < 49; i++)
	{
		if (stat[i] != 0)
		{
			printf("%d, %d, %f \n", i + 1, stat[i], (((float)stat[i] / (float)abs)*100.0));
		}
	}
	
}
