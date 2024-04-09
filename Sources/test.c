#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "test.h"

int func(int a)
{
    FILE *fptr;
    if ((fptr = fopen("tdata.bin","ab")) != NULL)
    {
        fwrite(&a, 1, 1, fptr);
        fclose(fptr);
    }

    if (a == 0x00)
        return 0;
    else if (a == 0x20)
        return 1;

    printf("last line is reached!");
    return 2;
}