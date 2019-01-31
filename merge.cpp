#include<iostream>

using namespace std;

void merge(int a[],int b[])

void sort(int arr[]){
    int len = sizeof(arr)/sizeof(arr[0]);
    int a[len],b[len],j=0;
    for(int i=0;i<len;i++){
        if(i<len/2)
            a[i]=arr[i];
        else{
            b[j]=arr[i];
            j++;
        }
    }
    merge(a,b);
}

int main(){
    int arr[5]={3,7,1,9,4};
    sort(arr);
    return 0;
}
