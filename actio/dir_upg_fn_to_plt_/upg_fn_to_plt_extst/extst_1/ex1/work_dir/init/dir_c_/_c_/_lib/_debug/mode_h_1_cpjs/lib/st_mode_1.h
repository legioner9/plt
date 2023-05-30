/* open/fcntl.  */
// #define O_ACCMODE 0003
// #define O_RDONLY 00
// #define O_WRONLY 01
// #define O_RDWR 02
// #ifndef O_CREAT
// #define O_CREAT 0100 /* Not fcntl.  */
// #endif
// #ifndef O_EXCL
// #define O_EXCL 0200 /* Not fcntl.  */
// #endif
// #ifndef O_NOCTTY
// #define O_NOCTTY 0400 /* Not fcntl.  */
// #endif
// #ifndef O_TRUNC
// #define O_TRUNC 01000 /* Not fcntl.  */
// #endif
// #ifndef O_APPEND
// #define O_APPEND 02000
// #endif
// #ifndef O_NONBLOCK
// #define O_NONBLOCK 04000
// #endif
// #ifndef O_NDELAY
// #define O_NDELAY O_NONBLOCK
// #endif
// #ifndef O_SYNC
// #define O_SYNC 04010000
// #endif
// #define O_FSYNC O_SYNC
// #ifndef O_ASYNC
// #define O_ASYNC 020000
// #endif

#ifndef ST_DEB
#define ST_DEB 01
#endif

#ifndef ST_PRN
#define ST_PRN 02
#endif