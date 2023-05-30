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
#include "lib/lc_io.h"
#include "lib/lc_pipe.h"
#include "lib/lc_str.h"
#include "lib/lc_in.h"
#include "lib/lib_1.h"
#include "lib/libgen_1.h"
#include "lib/socket_1.h"
#include "lib/st_mode_1.h"
#include "lib/sys_stat_1.h"
#include "lib/uni_1.h"

#define N 6

#include <aio.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <signal.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <net/if.h>
#include <netdb.h>
#include <search.h>


#include <dirent.h>
#include <fcntl.h>
#include <fmtmsg.h>
#include <ftw.h>
#include <glob.h>
#include <grp.h>
#include <iconv.h>
#include <inttypes.h>
#include <unistd.h>
#include <wchar.h>
#include <wordexp.h>
#include <gdbm.h>
#include <poll.h>
#include <pwd.h>
#include <regex.h>
#include <sched.h>

#define _XOPEN_SOURCE 500
// #define _GNU_SOURCE

// https://codecogs.com/library/computing/c/search.h/lsearch.php

char *animals[10] = 
{   
   "Horse", 
   "Dog", 
   "Cat", 
   "Goat", 
   "Peacock" 
}; 
size_t elems = 5; 
int compare (char **x, char **y) 
{   
   return (strcmp(*x, *y)); 
} 
int addelem(char *key) 
{   
   size_t num = elems; 
   lsearch(&key, animals, &num, sizeof(char *), (int (*)(const void *, const void *)) compare); 
   return (elems == num); 
} 

int main(int argc,     // Number of strings in array argv
         char *argv[], // Array of command-line argument strings
         char **envp)  // Array of environment variable strings
{
   char *key = "Dog"; 
   if (addelem(key)) 
     printf (" Animal \"%s\" already exists in array\n", key); 
   else
     printf ("\"%s\" added to animals array\n", key); 
    return 0;
}
