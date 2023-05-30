#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>
#include <time.h>
#include <uchar.h>
#include <wchar.h>
#include <wctype.h>

// lc_

#define N 6

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>

/*alphasort*/
/*closedir*/
/*dirfd*/
/*#*/ int dirfd_с(DIR *dirp, const char *file, const int line)
{
    int a = dirfd(dirp);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from dirfd_с errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

// /*#*/ int dirfd_сb(int cb(DIR *), DIR *dirp)
// {
//     int a = dirfd(dirp);
//     if (-1 == a)
//     {
//         cb(dirp);
//     }
//     return a;
// }
/*fdopendir*/
/*opendir*/
/*#*/ DIR *opendir_с(char *dirname, const char *file, const int line)
{
    DIR *a = opendir(dirname);
    if (NULL == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from opendir_с dirname = %s, errno = %d\n", dirname, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

// /*#*/ DIR *opendir_сb(int cb(char *), char *dirname)
// {
//     DIR *a = opendir(dirname);
//     if (NULL == a)
//     {
//         cb(dirname);
//     }
//     return a;
// }
/*readdir*/
/*#*/ struct dirent *readdir_с(DIR *dirp, const char *file, const int line)
{
    int e_start = errno;
    struct dirent *a = readdir(dirp);
    if (NULL == a && e_start != errno)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from readdir_с errno = %d\n", errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

// /*#*/ struct dirent *readdir_сb(int cb(DIR *), DIR *dirp)
// {
//     struct dirent *a = readdir(dirp);
//     if (NULL == a)
//     {
//         cb(dirp);
//     }
//     return a;
// }
/*readdir_r*/
/*#*/ int readdir_r_e(DIR *restrict dirp, struct dirent *restrict entry, struct dirent **restrict result, const char *file, const int line)
{
    int a = readdir_r(dirp, entry, result);
    if (0 != a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from readdir_r_с dirp = %d, errno = %d\n", dirp, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}

/*rewinddir*/
/*scandir*/
/*#*/ int scandir_с(const char *dir_path, struct dirent ***namelist,int (*select)(const struct dirent *),int (*compare)(const struct dirent **, const struct dirent **), const char *file, const int line)
{
    int a = scandir(dir_path,namelist,select,compare);
    if (-1 == a)
    {
        fprintf(stderr, "failed in file %s at line # %d\n", file, line);
        fprintf(stderr, "from scandir_с dir_path = %s, errno = %d\n", dir_path, errno);
        perror("exit(errno) with");
        exit(errno);
    }
    return a;
}
