#include <stdio.h>
int mat1[3][3] = {1, 8, 64, 2, 16, 128, 4, 32, 256};
int mat2[3][3] = {20, 14, 8, 18, 12, 6, 16, 10, 4};
int main()
{
  for (int y = 0; y < 3; y++)
  {
    for (int x = 0; x < 3; x++)
    {
      printf("%d   ", mat1[x][y] + mat2[x][y]);
    }
    printf("\n");
  }

  getchar();

}
