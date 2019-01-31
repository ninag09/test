#include "common.h"

using namespace std;

typedef struct Score{
    int i;
    int e;
    Score():i(0),e(0){};
}score;

//int stat;
vector<pair<score,bool>> nodes(14);
int Calculate(treenode* root);

void populateScore(treenode* node){
    if(!node) return;
    populateScore(node->left);
    score s;
    s.i = Calculate(node);
    if(node->left){
        treenode* temp = node->left;
        while(temp){
            s.e += Calculate(temp);
            temp = temp->right;
        }
    }
    nodes[node->val].first = s;
    nodes[node->val].second = true;
    populateScore(node->right);
}

int Calculate(treenode* root){
    if(nodes[root->val].second)
        return nodes[root->val].first.i;
//    stat++;
    int include = 1;
    if(root->left){
        treenode* child = root->left;
        while(child){
            if(child->left){
                treenode* gChild = child->left;
                while(gChild){
                    include += Calculate(gChild);
                    gChild = gChild->right;
                }
            }
           child = child->right;
        }
    }
    return include;
}

void Select(treenode* root, vector<bool> &selected){
    if(!root) return;
    score S = nodes[root->val].first;
    int I = S.i;
    int E = S.e;
    if(I < E){
        selected[root->val] = false;
        if(root->left){
            treenode* child = root->left;
            while(child){
                Select(child, selected);
                child = child->right;
            }
        }
        return;
    }
    selected[root->val] = true;    
    if(root->left){
        treenode* child = root->left;
        while(child){
            selected[child->val] = false;
            if(child->left){
                treenode* gChild = child->left;
                while(gChild){
                    Select(gChild, selected);
                    gChild = gChild->right;
                }
            }
            child = child->right;
        }
    }
    return;
}

int main(){
/*
         1
      /  | \ \
     2   3 12 13
     |  / \
     4 5   6
    / \ \
   7   8 9
        / \
       10 11

    Below the nodes are represented as LCRS(left child - right sibling) tree
    Left Child = treenode.left
    Right Sibling = treenode.right
*/
    treenode* root = new treenode(1);
    root->left = new treenode(2);
    root->left->right = new treenode(3);
    root->left->right->right = new treenode(12);
    root->left->right->right->right = new treenode(13);
    root->left->left = new treenode(4);
    root->left->right->left = new treenode(5);
    root->left->right->left->right = new treenode(6);
    root->left->left->left = new treenode(7);
    root->left->left->left->right = new treenode(8);
    root->left->right->left->left = new treenode(9);
    root->left->right->left->left->left = new treenode(10);
    root->left->right->left->left->left->right = new treenode(11);
    populateScore(root);
    
    vector<bool> selected(14,false);
    Select(root,selected);
    int count=0;
    for(int i=1; i<14; i++)
        if (selected[i]){
            count++;
            cout << i << " ";
        }
    cout << endl;
    cout << "No. of Employees: " << count << endl;
//    cout << stat << endl;        
//    for(auto x:nodes)
//        cout << x.first.i << " " << x.first.e << endl;
    return 0;
}
