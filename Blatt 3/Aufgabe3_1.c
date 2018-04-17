#include <stdio.h>
#define scanf_s scanf
int main()
{
  char string[999];

  printf("Geben Sie ihre Zeichen ein: ");
  scanf_s("%[^'\n']", &string);

  printf("\nEingabe war: %s \n", string);
  return 0;
}
