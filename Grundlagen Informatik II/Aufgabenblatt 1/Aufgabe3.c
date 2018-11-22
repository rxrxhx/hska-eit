#include <stdio.h>
#include <stdlib.h>

int main ()
{

    float * ptr;
    float f,x,e;
    
    printf("f : ");
    scanf("%f",&f);
    printf("x : ");
    scanf("%f",&x);
    
    ptr = (float*) malloc(sizeof(float));
    ptr = &f;
    e = *ptr * x;
    
    printf("Ergebnis : %f\n", e);
    printf("ptr : %x, %f\n",ptr,*ptr);
    return 0;
}