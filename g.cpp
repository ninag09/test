#include "common.h"

using namespace std;

typedef struct Score{
    int i;
    int e;
}score;

score Calc(treenode* root){
    score s;
    s.i = 1;
    s.e = 0;
    if(root->left){
        score S = Calc(root->left);
        s.i += S.i;
        s.e += max(S.i,S.e);
    }
    if(root->right){
        score R = Calc(root->right);
        s.i += R.i;
        s.e += max(R.i,R.e);
    } 
    return s;
}

void populateScore(treenode* node, vector<score> &nodes){
    if(!node)return;
    populateScore(node->left,nodes);
    nodes[node->val] = Calc(node);
    populateScore(node->right,nodes);
}

int main(){
    treenode* root = new treenode(1);
    root->left = new treenode(2);
    root->right = new treenode(3);
    root->left->left = new treenode(4);
    root->right->left = new treenode(5);
    root->right->right = new treenode(6);
    root->left->left->left = new treenode(7);
    root->left->left->right = new treenode(8);
    root->right->left->right = new treenode(9);
    root->right->left->right->left = new treenode(10);
    root->right->left->right->right = new treenode(11);
    vector<score> nodes(12);
    populateScore(root,nodes);
    for(auto x:nodes)
        cout << x.i << " " << x.e << endl;
//    score s = Calc(root->right);
//    cout << s.i << " " << s.e << endl;
    return 0;
}
