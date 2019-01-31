#include "common.h"

using namespace std;

bool bSearch(vector<int>& nums, int val, int l, int r){
    while(l <= r){
        int mid = l+(r-l)/2;
        if(nums[mid] == val) return true;

        if(nums[mid] > val)
            r = mid-1;
        else
            l = mid+1;
    }
/*
    if(l < r){
        if(val > nums[mid])
            return bSearch(nums, val, mid+1, r);
        return bSearch(nums, val, l, mid-1);
    }*/
    return false;
}

bool search(vector<int>& nums, int target){
    int r = nums.size()-1;
    return bSearch(nums, target, 0, r);
}

int main(){

    vector<int> elems;
    vecType<INT, int> v;
    v.inVec(elems,true);
    printVec(elems);
    int x = in<int>();
    if(search(elems,x)){
        cout << "Found" << endl;
        return 0;
    }
    cout << "Not Found" << endl;
}
