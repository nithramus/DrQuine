#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>  
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int main(){int i = 5;
int first = FIRST;if (first == 1) {first = 0;i++;}i--;char buffer[5000];sprintf(buffer, "Sully_%d.c", i);FILE *file= fopen(buffer, "w+");char *yolo = "#include <stdio.h>%c#include <sys/types.h>%c#include <sys/stat.h>%c#include <fcntl.h>  %c#include <stdlib.h>%c#include <stdio.h>%c#include <string.h>%cint main(){int i = %d;%cint first = FIRST;if (first == 1) {first = 0;i++;}i--;char buffer[5000];sprintf(buffer, %cSully_%cd.c%c, i);FILE *file= fopen(buffer, %cw+%c);char *yolo = %c%s%c;fprintf(file, yolo, 10,10,10,10,10,10,10,i,10,34,37,34,34,34,34,yolo,34,34,37,37,37,37,34);fclose(file);sprintf(buffer, %cgcc -Wall -Wextra -Werror -DFIRST=%cd Sully_%cd.c -o Sully_%cd && ./Sully_%cd%c, first, i, i, i);if (i <= 0){return 0;};system(buffer);return 1;}";fprintf(file, yolo, 10,10,10,10,10,10,10,i,10,34,37,34,34,34,34,yolo,34,34,37,37,37,37,34);fclose(file);sprintf(buffer, "gcc -Wall -Wextra -Werror -DFIRST=%d Sully_%d.c -o Sully_%d && ./Sully_%d", first, i, i, i);if (i <= 0){return 0;};system(buffer);return 1;}