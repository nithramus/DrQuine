#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>  
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int main(int argc, char **argv){int i = 5;argc=1;if(!(strcmp(argv[0], "./Sully")))i++;i--;char buffer[5000];sprintf(buffer, "Sully_%d.c", i);FILE *file= fopen(buffer, "w+");char *yolo = "#include <stdio.h>%c#include <sys/types.h>%c#include <sys/stat.h>%c#include <fcntl.h>  %c#include <stdlib.h>%c#include <stdio.h>%c#include <string.h>%cint main(int argc, char **argv){int i = %d;argc=1;if(!(strcmp(argv[0], %c./Sully%c)))i++;i--;char buffer[5000];sprintf(buffer, %cSully_%cd.c%c, i);FILE *file= fopen(buffer, %cw+%c);char *yolo = %c%s%c;fprintf(file, yolo, 10,10,10,10,10,10,10,i,34,34,34,37,34,34,34,34,yolo,34,34,37,37,37,34);fclose(file);sprintf(buffer, %cgcc -Wall -Wextra -Werror Sully_%cd.c -o Sully_%cd && ./Sully_%cd%c, i, i, i);if (i <= 0){return 0;};system(buffer);return 1;}";fprintf(file, yolo, 10,10,10,10,10,10,10,i,34,34,34,37,34,34,34,34,yolo,34,34,37,37,37,34);fclose(file);sprintf(buffer, "gcc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d && ./Sully_%d", i, i, i);if (i <= 0){return 0;};system(buffer);return 1;}