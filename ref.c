#include<stdio.h>
/*
void check(int* data){
    int d = 20;
    data = &d;
    printf("%d\n",*data);
    return;
}
*/
void check(int** data,char* arr){
    int d = 20;
    *data = &d;
    *arr='N';
    printf("%d\n",**data);
    printf("%s\n",arr);
    return;
}
//*/
int main()
{
    char arr[]="nithesh";
    int test = 10;
    int* ptr = &test;
    printf("%d\n",test);
    printf("%s\n",arr);

    check(&ptr,arr);
    printf("%d\n",*ptr);
    printf("%s\n",&arr[0]);
    return 0;
}
