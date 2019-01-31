#include "common.h"

using namespace std;
/*
typedef struct graphNode{
    int val;
    vector<graphNode*> neigh;
    graphNode(int x): val(x) {};
}graphnode;
*/
graphnode* clone(graphnode* src){
    unordered_map<graphnode*, graphnode*> res;
    list<graphnode*> q;
    q.push_back(src);
    graphnode* cloneSrc = new graphnode(src->val);
    res[src] = cloneSrc;
    while(!q.empty()){
        graphnode* n = q.front();
        q.pop_front();
        for(int i=0; i<n->neigh.size(); i++){
            if(!res[n->neigh[i]]){
                q.push_back(n->neigh[i]);
                res[n->neigh[i]] = new graphnode(n->neigh[i]->val);
            }
            res[n]->neigh.push_back(res[n->neigh[i]]);
        }
    }
    return cloneSrc;
}

void bfs(graphnode* src){
    unordered_map<graphnode*, bool> vis;
    list<graphnode*> q;
    vis[src]=true;
    q.push_back(src);
    while(!q.empty()){
        graphnode* n = q.front();
        q.pop_front();
        cout << n->val << endl;
        for(int i=0; i<n->neigh.size(); i++){
            if(!vis[n->neigh[i]]){
                q.push_back(n->neigh[i]);
                vis[n->neigh[i]] = true;
            }
        }
    }
    return;
}

int main(){
    graphnode* n1 = new graphnode(0);
    graphnode* n2 = new graphnode(1);
    graphnode* n3 = new graphnode(2);
    graphnode* n4 = new graphnode(3);
    
    vector<graphnode*> v;
    v.push_back(n2);
    v.push_back(n3);
    n1->neigh = v;
    v.clear();
    v.push_back(n4);
    n2->neigh = v;
    n3->neigh = v;

    bfs(n1);
    graphnode* c = clone(n1);
    cout <<  "Cloned" << endl;
    bfs(c);
    return 0;
}
