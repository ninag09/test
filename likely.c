#include <stdio.h>
#include <time.h>

#define likely(x) __builtin_expect((x), 1)
#define unlikely(x) __builtin_expect ((x), 0)

int check(){
    if(time(NULL))
        return 1;
    return 0;
}

int main()
{
    int i = check();
    
    if(unlikely(i))
        puts("a");
    else
        puts("b");
    return 0;
}
