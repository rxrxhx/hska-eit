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
    printf("%c", string[k]);
  }

  printf("\n");
  return 0;
}
