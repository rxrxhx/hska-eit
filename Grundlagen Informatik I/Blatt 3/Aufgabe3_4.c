#include <stdio.h>

int main()
{
	char firstString[11];
	char secondString[11];
	char result[21];
	
	for (int i = 0; i < 11; i++) {
		firstString[i] = ' ';
		secondString[i] = ' ';
	}
	
	
	printf("Erster String:\n");
	
	//Eingabe erster String
	scanf("%s", firstString);
	printf("Zweiter String:\n");
	//Eingabe erster String
	scanf("%s", secondString);

	//Cat
	for (int i = 0; i < 10; i++)
	{
		result[i] = firstString[i];
		result[i + 10] = secondString[i];
	}
	
	printf("Cat:\n");
	for (int k = 0; k < sizeof(result); k++)
	{
		printf("%c", result[k]);
	}
	
	printf("\n");
	getchar();
}
