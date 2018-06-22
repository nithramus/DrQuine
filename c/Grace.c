#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#define USELESS 0
#define SWAGMAN 1
/*
    SWAGMAN
*/
#define FT()                                                                                                                                                                                                                                                                                                                                                                                                                 \
    int main()                                                                                                                                                                                                                                                                                                                                                                                                               \
    {                                                                                                                                                                                                                                                                                                                                                                                                                        \
        FILE *file = fopen("Grace_kid.c", "w+");                                                                                                                                                                                                                                                                                                                                                                             \
        if (!file)                                                                                                                                                                                                                                                                                                                                                                                                           \
        {                                                                                                                                                                                                                                                                                                                                                                                                                    \
            exit(0);                                                                                                                                                                                                                                                                                                                                                                                                         \
        }                                                                                                                                                                                                                                                                                                                                                                                                                    \
        char *first = "#include <stdio.h>%c#include <sys/types.h>%c#include <sys/stat.h>%c#include <fcntl.h>  %c#include <stdlib.h>%c#include <stdio.h>%c#define USELESS 0%c#define SWAGMAN 1%c/*%c    SWAGMAN%c*/%c#define FT() int main(){FILE *file = fopen(%cGrace_kid.c%c, %cw+%c);if (!file){exit(0);}char *first = %c%s%c;fprintf(file, first,10,10,10,10,10,10,10,10,10,10,10,34,34,34,34,34,first,34,10);}%cFT();"; \
        fprintf(file, first, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 34, 34, 34, first, 34, 10);                                                                                                                                                                                                                                                                                                                 \
    }
FT();