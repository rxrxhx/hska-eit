#include <stdio.h>
#define scanf_s scanf
int main()
{
  char string[10];

  printf("Geben Sie ihre Zeichen ein: ");
  scanf_s("%[^'\n']", &string);
  printf("\n Ihre Eingabe: ");

  for (int i = 0; i < 10; i++)
  {
    printf("%c", string[i]);
  }
  printf("\n");
  getchar();
}
