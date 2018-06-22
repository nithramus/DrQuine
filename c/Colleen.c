#include <stdio.h>
void foo() {}
/*
    coucou
*/
int main()
{
    /*
    yolo
*/
    char *first = "#include <stdio.h>%cvoid foo(){}%c/*%c    coucou%c*/%c";
    printf(first, 10, 10, 10, 10, 10);
    char *second = "int main(){%c/*%c    yolo%c/*%cchar *first=%c%s%c;%cprintf(first, 10,10,10, 10, 10);%cchar *second = %c%s%c;%cprintf(second, 10, 10, 10, 10, 34, first, 34, 10, 10, 34, second, 34, 10, 10);%cfoo();}";
    printf(second, 10, 10, 10, 10, 34, first, 34, 10, 10, 34, second, 34, 10, 10);
    foo();
}