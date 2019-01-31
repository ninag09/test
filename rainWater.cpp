#include "common.h"

using namespace std;

int trap(vector<int>& height)
{
    int ans = 0;
    int size = height.size();
    for (int i = 1; i < size-1 ; i++) {
        int max_left = 0, max_right = 0;
        for (int j = i; j >= 0; j--) { //Search the left part for max bar size
            max_left = max(max_left, height[j]);
        }
        for (int j = i; j < size; j++) { //Search the right part for max bar size
            max_right = max(max_right, height[j]);
        }
        ans += min(max_left, max_right) - height[i];
        cout << "L: " << max_left << " R: " << max_right << "Height: "<< height[i] << " Ans: " << ans << endl;
    }
    return ans;
}

int main(){
    vector<int> elems;
    //vecType<INT,int> v;
    //v.inVec(elems);
    intVecFromFile(elems,',');

    int ru = trap(elems);
    cout << "From trap: " << ru << endl;
    int l=0;
    int r=elems.size()-1;
    int lMax=0;
    int rMax=0;
    int total = 0;

    while(l < r){
        if(elems[l]>elems[r]){
            elems[r]>rMax ? rMax=elems[r] : total += rMax - elems[r];
            r--;
        }
        else{
            elems[l]>lMax ? lMax=elems[l] : total += lMax - elems[l];
            l++;
        }
    }
    cout << "Total: " << total << endl;

    return 0;
}
