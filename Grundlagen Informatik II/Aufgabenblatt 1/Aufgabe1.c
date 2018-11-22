#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main ()
{
	char buf[] = "Zeichenketten", c;
	int i, j, len; 
	len = strlen (buf); //ermittelt die Laenge von buf
	for(i=0, j=len-1; i<j; i++, j--)
	{
		c = *(buf +i); 
		*(buf +i) = *(buf +j);
		*(buf +j) = c;		
	} 
	
	printf("%s\n", buf);
	
    return 0;
}
