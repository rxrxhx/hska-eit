#include <stdio.h>
#define scanf_s scanf
int main()
{
  int i = 0;
  int array[5];
  int avg = 0;

  for (int k = 0; k < 5; k++)
  {
    array[k] = 0;
  }

  for (i = 0; i < 5; i++)
  {
    printf("Zahl %d = ",i);
    scanf_s("%d",&array[i]);
  }

  printf("\n");

  for (int i = 0; i < 5; i++)
  {
    avg = avg + array[i];
  }

  avg = avg/5;

  printf("Durchschnitt = %d\n", avg);
  getchar();
  return 0;
}
