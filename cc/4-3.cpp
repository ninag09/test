#include "common.h"

treenode* createBST(vector<int>& ip, int l, int r){
    if(l > r){
        OUT("start: "<< l << " end: " << r <<  eol)
        return nullptr;
    }
    int mid = l + (r-l)/2;
    OUT("start: "<< l << " end: " << r << " mid: " << mid << eol)
    treenode* root = new treenode(ip[mid]);
    root->left = createBST(ip,l,mid-1);
    root->right = createBST(ip,mid+1,r);
    return root;
}

int main(){

    vector<int> ip {0,1,2,3,4,5,6};
    createBST(ip,0,ip.size()-1);

    return 0;
}
