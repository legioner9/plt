#ifndef socket_1
#define socket_1
#include "h_1.h"

int socket_с(int domain, int type, int protocol, const char *file, const int line, int st__mo, int st__if, int st__re);
int listen_с(int socket, int backlog, const char *file, const int line, int st__mo, int st__if, int st__re);
int bind_с(int socket, const struct sockaddr *address, socklen_t address_len, const char *file, const int line, int st__mo, int st__if, int st__re);
int accept_с(int socket, struct sockaddr *restrict address, socklen_t *restrict address_len, const char *file, const int line, int st__mo, int st__if, int st__re);


#endif