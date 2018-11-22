#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int reversestring(char* input, int lenght)
{
	char buffer;

	for (int i = 0, j = lenght - 1; i < j; i++, j--)
	{
		buffer = *(input + i); // originales zeichen mit index i in buff
		*(input + i) = *(input + j); // zeichen an die gespeigelte stelle schreiben
		*(input + j) = buffer; //das original an die gespeigelte stelle
	}
	
	return 0;
}

int main()
{
	char wort[100];
	scanf("%s", &wort);
	reversestring(wort, strlen(wort));
	printf("%s\n", wort);
	
	return 0;
}