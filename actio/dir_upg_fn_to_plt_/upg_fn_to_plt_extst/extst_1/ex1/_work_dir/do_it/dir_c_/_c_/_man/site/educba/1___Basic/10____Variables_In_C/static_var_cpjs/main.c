#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

// LIB FROM ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib
#include "lib/lc_0.h"
#include "lib/lc_1.h"

#include "head_with_static.h" // static variable = 42; in main file!!!
#include "fn.h"

#define N 6

int main(int argc, char const *argv[])
{
    fn(); // attempt vaiable = 100;
    printf("variable in main() = %d\n", variable);
    return 0;
}

