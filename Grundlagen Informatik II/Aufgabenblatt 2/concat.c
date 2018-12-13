#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFER_SIZE 100

int main(int argc, char **argv)
{
  FILE *source;
  FILE *dest;
  char buffer[BUFFER_SIZE];

  if (argc < 3)
  {
      printf("Fehler: Dateipfad fehlt!\n");
      return (1);
  }
  source = fopen(argv[1], "r");
  dest = fopen(argv[2], "w");

  if (source == NULL)
  {
      printf("Fehler: %s wurde nicht gefunden\n", argv[1]);
      return (1);
  }

  if (atoi(argv[3]) < 0)
  {
      printf("Fehler: %d ist keine moegliche Zahl", atoi(argv[3]));
      return (1);
  }

  for (int i = 0; i < atoi(argv[3]); i++)
  {
    source = fopen(argv[1], "r");
    while (!feof(source))
    {
      fgets(buffer, BUFFER_SIZE, source);
      fprintf(dest,"%s", buffer);
    }
  }

  printf("\n");
  fclose(dest);
  fclose(source);
  return (0);
}
