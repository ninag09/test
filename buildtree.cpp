#include "common.h"

using namespace std;

void printtree(treenode* root){
    if(!root) return;
    printtree(root->left);
    cout << root->val << endl;
    printtree(root->right);
}

int main(){
    
    treenode* root = new treenode(3);
    root->left = new treenode(1);
    root->left->right = new treenode(2);
    root->right = new treenode(4);
    root->right->right = new treenode(5);

    printtree(root);
    return 0;
}
