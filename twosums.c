#include<stdio.h>
#include<stdlib.h>
int* twosum(int* nums, int size, int tgt);
int nums[] = {2, 8, 11, 7};
int k,tgt = 9;

int main(){
    int* arr = twosum(nums, 4, tgt);
    for(k=0;k<2;k++)printf("%d ", arr[k]);
    free(arr);
    return 0;
}

int* twosum(int* num, int size, int tgt){
    int* ret = (int*) malloc(2*sizeof(int));
    int i,j=0;
    for (i=0;i<size;i++){
        for(j=i;j<size;j++){
            if(num[i]+num[j] == tgt){
                if(i != j){
                    ret[0]=i;
                    ret[1]=j;
                }
            }
        }
    }
    return ret;
}
