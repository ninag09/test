#include "common.h"

using namespace std;

int height(treenode* root){
    if(!root) return 0;
    return (1+max(height(root->left), height(root->right)));
}

void printLevel(treenode* root, int l){
    if(!root) return;
    if(l == 1) cout << root->val << endl;
    printLevel(root->left, l-1);
    printLevel(root->right, l-1);
}

int main(){
    treenode* root = new treenode(3);
    root->left = new treenode(1);
    root->left->right = new treenode(2);
    root->right = new treenode(4);
    root->right->right = new treenode(5);
    int h = height(root);
    for(int i=1; i<=h; i++)
        printLevel(root,i);

    return 0;
}
