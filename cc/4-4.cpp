#include "common.h"

int findHeight(treenode* root){
    if(!root)
        return 0;
    return 1+std::max(findHeight(root->left),findHeight(root->right));
}

void levelOrderList(treenode* root, vector<int>& res, int l){
    if(!root)
        return;
    if(!l){
        res.push_back(root->val);
        return;
    }
    levelOrderList(root->left, res, l-1);
    levelOrderList(root->right, res, l-1);
}

int main(){
    treenode* root = new treenode(10);
    root->left = new treenode(7);
    root->left->left = new treenode(5);
    root->left->right = new treenode(8);
    root->left->left->left = new treenode(3);
    root->right = new treenode(13);
    root->right->right = new treenode(15);
    root->right->left = new treenode(12);
    root->right->right->right = new treenode(17);

    int h = findHeight(root);
    vector<vector<int>> res(h);
    for(int i=0; i<h; i++){
        levelOrderList(root,res[i],i);
    }
    for(auto x:res)
            printVec(x);
    return 0;
}
