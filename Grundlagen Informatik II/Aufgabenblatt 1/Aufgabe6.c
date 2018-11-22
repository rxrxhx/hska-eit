#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *pointers[10];
int length[10];
int ind = 0;

void wort_speicher(char input[]) 
{
	length[ind] = strlen(input); // länge bestimmen
	pointers[ind] = (char *) malloc(sizeof(char) * length[ind]);
	pointers[ind] = input; //an die von malloc gegebene stelle schreiben
	printf("%s\n%p, %d, %d\n", pointers[ind], pointers[ind], length[ind], ind);
	ind++;
}

void wort_lesen(int index) 
{
	printf("%s ", pointers[index]);
}

int main ()
{
	char buffer[10][100];
	for (int i = 0; i < 10; i++)
	{
		printf("Wort %d :", i);
		scanf("%s", &buffer[i]);
		wort_speicher(buffer[i]);
	}
	
	for (int i = 0; i < 10; i++) 
	{
		wort_lesen(i);
	}
	printf("\n");
	
    return 0;
}