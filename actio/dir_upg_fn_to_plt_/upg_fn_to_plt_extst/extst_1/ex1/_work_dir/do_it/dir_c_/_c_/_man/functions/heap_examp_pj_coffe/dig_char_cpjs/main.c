#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// LIB FROM ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"

#define N 6

int main(int argc, char const *argv[])
{
    int i = 1;
    while (i < 128)
    {
        int a = i;
        int *pa = &a;
        printf("%d : %c\n", i, i);
        i++;
    }
    return 0;
}
