#include <stdio.h>

int main()
{
  char string[10];
  for (int i = 0; i < 10; i++)
  {
    string[i] = getchar();
  }
  printf("\n");
  for (int k = 0; k < 10; k++)
  {
	  if (string[k] > 96 && string[k] < 123) 
	  {
		  printf("%c", string[k] - 32);
	  }
	  else 
	  {
		  printf("%c", string[k]);
	  }
  }

  printf("\n");
  return 0;
}
