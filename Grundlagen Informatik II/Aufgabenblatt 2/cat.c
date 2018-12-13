#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define BUFFER_SIZE 1000

int main(int argc, char **argv)
{
  FILE *fileptr;
  char buffer[BUFFER_SIZE];

  if (argc < 2)
  {
      printf("Fehler: Dateipfad fehlt!\n");
      return (1);
  }
  fileptr = fopen(argv[1], "r");

  if (fileptr == NULL)
  {
      printf("Fehler: %s wurde nicht gefunden\n", argv[1]);
      return (1);
  }

  while (!feof(fileptr))
  {
    fgets(buffer, BUFFER_SIZE, fileptr);
    printf("%s", buffer);
  }
  printf("\n");
  fclose(fileptr);
  return (0);
}
