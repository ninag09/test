//#define DISABLE_TRACE
#include "common.h"

void printTree(treenode* root){
    if(!root) return;
    printTree(root->left);
    TLINE(root->val << " ");
    printTree(root->right);
}

int maxDepth(treenode* root){
    if(!root) return 0;
    return 1+std::max(maxDepth(root->left),maxDepth(root->right));
}

int minDepth(treenode* root){
    if(!root) return 0;
    return 1+std::min(minDepth(root->left),minDepth(root->right));
}

bool isBalanced(treenode* root){
    return (maxDepth(root) - minDepth(root) <= 1);
}

int main(){
    
    treenode* root = new treenode(10);
    root->left = new treenode(7);
    root->left->left = new treenode(5);
    root->left->right = new treenode(8);
    root->left->left->left = new treenode(3);
    root->right = new treenode(13);
    root->right->right = new treenode(15);
//    root->right->left = new treenode(12);
//    root->right->right->right = new treenode(17);

    printTree(root);
    TLINE(eol);

    if(isBalanced(root)){
        OUT("Balanced" << eol);
    }
    else{
        OUT("Not Balanced" << eol);
    }

    return 0;
}
