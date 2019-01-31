#include "common.h"

using namespace std;

typedef struct TNode{
    int val;
    unique_ptr<TNode> left;
    unique_ptr<TNode> right;
    TNode (int x): val(x), left(nullptr), right(nullptr) {};
}tNode;

typedef unique_ptr<tNode> tptr;

void print(tptr &root, int &&a){
    if(root == nullptr){
        cout << a << endl;
        return;}
    print(root->left, a+1);
    cout << root->val << " ";
    print(root->right, a+1);
}

int main(){

    tptr root = make_unique<tNode>(3);
    root->left = make_unique<tNode>(1);
    root->right = make_unique<tNode>(4);
    root->left->left = make_unique<tNode>(0);
    root->left->right = make_unique<tNode>(2);
    root->right->right = make_unique<tNode>(5);
    
    print(root, 0);
    cout << endl;
    
    return 0;
}
