#include <iostream>

typedef struct treeNode{
    int val;
    struct treeNode* left;
    struct treeNode* right;
    treeNode (int x): val(x), left(NULL), right(NULL) {};
}treenode;

void mirror(treenode *&root){
    if(!root) 
        return;
    mirror(root->left);
    mirror(root->right);
    treenode* temp = NULL;
    temp = root->left;
    root->left = root->right;
    root->right = temp;
    return;
}

int main(){
    treenode* root = new treenode(5);
    root->left = new treenode(4);
    root->left->left= new treenode(3);
    root->left->right= new treenode(2);
    root->right = new treenode(6);
    root->right->right = new treenode(7);

    mirror(root);
    return 0;
}
