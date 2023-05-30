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

// LIB FROM $HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib
#include "lib/dirent_1.h"
#include "lib/fcntl_1.h"
#include "lib/io_1.h"
#include "lib/l3p_1.h"
#include "lib/lc_0.h"
#include "lib/lc_1.h"
#include "lib/lc_in.h"
#include "lib/lc_io.h"
#include "lib/lc_pipe.h"
#include "lib/lc_str.h"
#include "lib/lib_1.h"
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#include <aio.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/ipc.h>
#include <sys/mman.h>
#include <sys/sem.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <sys/wait.h>

#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <gdbm.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <poll.h>
#include <pthread.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>
#include <search.h>
#include <semaphore.h>
#include <signal.h>
#include <spawn.h>
#include <stdarg.h>
#include <stddef.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>
#include <resolv.h>

#define _XOPEN_SOURCE 500
// https://linuxhint.com/using_mmap_function_linux/

// В Example4.c сначала массив инициализируется некоторыми значениями,
// затем дочерний процесс обновляет значения. Родительский процесс считывает
// значения, обновленные дочерним процессом, поскольку отображенная память является
// общей для обоих процессов.

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
    int N = 5; // Number of elements for the array

    int *ptr = mmap(NULL, N * sizeof(int), PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, 0, 0);

    if (ptr == MAP_FAILED)
    {
        printf("Mapping Failed\n");
        return 1;
    }

    for (int i = 0; i < N; i++)
    {
        ptr[i] = i + 1;
    }

    printf("Initial values of the array elements :\n");
    for (int i = 0; i < N; i++)
    {
        printf(" %d", ptr[i]);
    }
    printf("\n");

    pid_t child_pid = fork();

    if (child_pid == 0)
    {
        // child
        for (int i = 0; i < N; i++)
        {
            ptr[i] = ptr[i] * 10;
        }
    }
    else
    {
        // parent
        waitpid(child_pid, NULL, 0);
        printf("\nParent:\n");

        printf("Updated values of the array elements :\n");
        for (int i = 0; i < N; i++)
        {
            printf(" %d", ptr[i]);
        }
        printf("\n");
    }

    int err = munmap(ptr, N * sizeof(int));

    if (err != 0)
    {
        printf("UnMapping Failed\n");
        return 1;
    }
    
    return 0;
}
