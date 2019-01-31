#include "common.h"

typedef struct Node{
    int val;
    Node* left; 
    Node* right;
    Node* parent;
    Node(int x):val(x), left(NULL), right(NULL), parent(NULL){};
}node;

node* bsearch(node* root, int n){
    if(!root)
        return NULL;
    if(root->val == n)
        return root;
    if(root->val > n)
        return bsearch(root->left, n);
    else
        return bsearch(root->right, n);
}

node* nextNode(node* root){
    if(root->right)
        return root->right;
    node* par = root->parent;
    if(!par) return NULL;
    if(root == par->left)
        return par;
    if(root == par->right)
        if(par->parent)
            return par->parent;
    return NULL;
}

int main(){

    node* root = new node(10);
    root->left = new node(7);
    root->left->parent = root;
    root->left->left = new node(5);
    root->left->left->parent = root->left;
    root->left->right = new node(8);
    root->left->right->parent = root->left;
    root->right = new node(13);
    root->right->parent = root;
    root->right->right = new node(15);
    root->right->right->parent = root->right;
    root->right->left = new node(12);
    root->right->left->parent = root->right;
    
    int n = in<int>();
    node* givenNode = bsearch(root, n);
    if(!givenNode){
        OUT("Not Found" << eol);
        return 0;
    }
    node* res = nextNode(givenNode);
    if(!res){
        OUT("Not Found" << eol);
        return 0;
    }
    OUT("Successor : "<<res->val<<eol);

    return 0;
}
