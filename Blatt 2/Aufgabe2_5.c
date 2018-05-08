#include <stdio.h>
#define scanf_s scanf
int main()
{
  int mat1[3][3];
  int mat2[3][3];
  int x = 0;
  int y = 0;
  //Input mat1
  printf("Matrix 1: \n");
  for (y = 0; y < 3; y++)
  {
    for (x = 0; x < 3; x++)
    {
	  printf("(%d,%d)", y, x);
      scanf_s("%d", &mat1[x][y]);
    }
  }
  //Input mat2
  printf("\nMatrix 2: \n");
  for (y = 0; y < 3; y++)
  {
    for (x = 0; x < 3; x++)
    {
	  printf("(%d,%d)", y, x);
      scanf_s("%d", &mat2[x][y]);
    }
  }
  //Output
  for (y = 0; y < 3; y++)
  {
    for (x = 0; x < 3; x++)
    {
      printf("%d; ", mat1[x][y] + mat2[x][y]);
    }
    printf("\n");
  }

  getchar();
  return 0;
}
