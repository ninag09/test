#include "common.h"

using namespace std;

int count(int m, int n){
    if(m==1 || n==1)
        return 1;
    int i = count(m-1,n);
    int j = count(m,n-1);
    int k = count(m-1,n-1);
    return i+j+k;
}

int main(){

    int res = count(3,3);
    cout << res << endl;
    return 0;
}
