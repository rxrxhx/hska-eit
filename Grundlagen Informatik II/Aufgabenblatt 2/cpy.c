#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define BUFFER_SIZE 1000

int main(int argc, char **argv)
{
  int source;
  int dest;
  char buffer[BUFFER_SIZE];
  int read_size;

  if (argc < 3)
  {
      printf("Fehler: Dateipfad fehlt!\n");
      return (1);
  }
  source = open(argv[1], O_RDONLY);
  creat(argv[2], O_CREAT);
  dest = open(argv[2], O_WRONLY);

  if (source == -1)
  {
      printf("Fehler: %s wurde nicht gefunden\n", argv[1]);
      return (1);
  }

  while ((read_size = read(source, buffer, BUFFER_SIZE)) > 0)
    write(dest, &buffer, read_size);

  close(dest);
  close(source);
  return (0);
}
