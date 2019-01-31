#include <iostream>

using namespace std;

int* insertionSort(int* arr){

    return arr;
}

int main(){

    int arr[10] = {9,5,3,1,2,4,7,6,8,10};
    int* res = NULL;

    res = insertionSort(arr);

    for(int i=0; i<10 ;i++){
        cout << res[i] << " ";
    }
    cout << endl;

    return 0;
}
