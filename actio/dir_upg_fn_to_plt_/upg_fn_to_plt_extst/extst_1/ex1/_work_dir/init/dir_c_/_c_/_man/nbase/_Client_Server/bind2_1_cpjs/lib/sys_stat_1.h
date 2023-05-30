#ifndef sys_stat_1
#define sys_stat_1
#include "h_1.h"

int stat_с(const char *restrict path, struct stat *restrict buf, const char *file, const int line, int st__mo, int st__if, int st__re);
int mknod_с(char *path, mode_t mode, dev_t dev, const char *file, const int line, int st__mo, int st__if, int st__re);
int mkfifo_с(const char *file_path, mode_t mode, const char *file, const int line, int st__mo, int st__if, int st__re);
int mkdir_с(char *dir_path, mode_t mode, const char *file, const int line);
int fstat_с(int fildes, struct stat *buf, const char *file, const int line, int st__mo, int st__if, int st__re);


#endif