#include "common.h"

using namespace std;

void findMinMax(treenode* root, int& Min, int& Max, int hd){
    if(!root) return;
    if(Min > hd) Min = hd;
    else if (Max < hd) Max = hd;
    findMinMax(root->left, Min, Max, hd-1);
    findMinMax(root->right, Min, Max, hd+1);
}

void vorder(treenode* root, int level, int &&hd, vector<vector<int>>& res, int ind){
    if(!root) return;
    if(level == hd){
        res[ind].push_back(root->val);
    }
    vorder(root->left, level, hd-1, res, ind-1);
    vorder(root->right, level, hd+1, res, ind+1);
}

int main(){
    treenode* root = new treenode(3);
    root->left = new treenode(1);
    root->left->right = new treenode(2);
    root->right = new treenode(4);
    root->right->right = new treenode(5);
    int Min = 0, Max = 0;
    findMinMax(root, Min, Max, 0);
    cout << "Min: " << Min << " Max: " << Max << endl;
    int index = Min * -1;
    vector<vector<int>> res;
    res.resize(Max-Min+1);
    for(int i=Min; i<=Max; i++)
        vorder(root,i,0,res,index);

    for(int x=0; x<res.size(); x++){
        for(auto y: res[x])
            cout << y << " ";
        cout << endl;
    }

    return 0;
}
