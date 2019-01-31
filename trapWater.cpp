#include<iostream>
#include<string>
#include<vector>

using namespace std;

int main(){
    vector<int> nums {0,1,0,2,1,0,1,3,2,1,2,1};

    int left = 0;
    int right = nums.size()-1;
    int leftMax =0;
    int rightMax =0;
    int res=0;

    while(left < right){
        if(nums[right] > nums[left]){
            nums[left]>leftMax ? leftMax = nums[left] : res += leftMax - nums[left];
            left++;
        }
        else{
            nums[right]>rightMax ? rightMax = nums[right] : res += rightMax - nums[right];
            right--;
        }
    }
    cout << res << endl;
}
