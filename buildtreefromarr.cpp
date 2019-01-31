#include "common.h"

using namespace std;

treenode* buildtree(int arr[],int l, int h){
    if(l>h)
        return nullptr;
    int mid = l+(h-l)/2;
    treenode* root = new treenode(arr[mid]);
    root->left = buildtree(arr, l, mid-1);
    root->right = buildtree(arr, mid+1, h);
    return root;
}

void printTree(treenode* root){
    if(!root)return;
    printTree(root->left);
    cout << root->val << endl;
    printTree(root->right);
}

int main(){
    int arr[] = {1,2,3,4,5,6,7,8,9};

    treenode* root = buildtree(arr,0 , 8);
    printTree(root);
    return 0;
}
