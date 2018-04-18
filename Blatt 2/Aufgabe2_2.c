#include <stdio.h>
#define scanf_s scanf
int main()
{
  int i = 0;
  int array[5];
  int tmp = 0;

  for (int k = 0; k < 5; k++)
  {
    array[k] = 0;
  }

  for (i = 0; i < 5; i++)
  {
    printf("Zahl %d = ",i);
    scanf_s("%d",&tmp);
    array[i] = tmp *2;
  }

  printf("\n");

  for (i = 4; i >= 0; i--)
  {
    printf("Zahl %d = %d\n", i, array[i]);
  }

  getchar();
  return 0;
}
