#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "test.h"

// void func(int a)
// {
//     FILE *fptr;
//     if ((fptr = fopen("tdata.bin","ab")) != NULL)
//     {
//         fprintf(fptr, "a=%d", a);
//         fclose(fptr);
//     }
// }

void func(int a)
{
    void* m1;
    void* m2;
    switch (a) {
        case 0:
            m1 = malloc(a);
            // do something here, for example send data through socket
            free(m1);
            break;
        case 1:
            m2 = malloc(a + 1);
            // another action, let's say saving the file
            free(m2);
            break;
        
        default:
            break;
    }
}