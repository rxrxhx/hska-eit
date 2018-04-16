#include <stdio.h>
#define scanf_s scanf
int main()
{
  int i = 0;
  int array[5];
  for (i = 0; i < 5; i++)
  {
    printf("Zahl %d = ",i);
    scanf_s("%d",&array[i]);
  }

  printf("\n");

  int min = 2147483647;
  int max = -2147483648;
  for (i = 0; i < 5; i++)
  {
    if (array[i] < min)
      min = array[i];

    if (array[i] > max)
      max = array[i];
  }

  printf("Maximum = %d\n", max);
  printf("Minimum = %d\n", min);

  getchar();
}
