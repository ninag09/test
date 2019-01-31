#include<iostream>
#include<vector>
using namespace std;

int bSearch(vector<int> &arr, int val, int l, int r);

int main(){

int vect[]={0,1,2,3,4,5,6,7,8};
int n = sizeof(vect)/sizeof(vect[0]);
vector<int> arr(vect, vect+n);
int val, res;

while(true){
    cin >> val;
    if(val == -1)break;

    res = bSearch(arr, val, 0, arr.size()-1);
    if (res == -1)
        cout << "Not found\n";
    else
        cout << "Found: " << res << endl; 

}
return 0;
}

int bSearch(vector<int> &arr, int val, int l, int r){
    if(r < l)return -1;
        int mid = (l+r)/2;
        if (arr[mid] == val)
            return mid;
        if(arr[mid] > val)
            return bSearch(arr, val, l, mid-1);
        return bSearch(arr, val, mid+1, r);
}
