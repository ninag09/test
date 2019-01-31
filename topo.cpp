#include "common.h"

using namespace std;

void topo(graph& g, vector<bool>& vis, int i, stack<int>& stk){
    vis[i] = true;
    list<int>::iterator itr;
    for(itr=g.aList[i].begin(); itr!=g.aList[i].end(); itr++){
        if(!vis[*itr])
            topo(g, vis, *itr, stk);
    }
    stk.push(i);
    return;
}

int main(){

    int v = 4;
    graph g(v);
    g.addEdge(0,1);
    g.addEdge(0,2);
    g.addEdge(1,3);
    g.addEdge(2,3);

    vector<bool> vis(v,false);
    stack<int> stk;

    for(int i=0;i<v;i++)
        if(!vis[i])
            topo(g, vis, i, stk);

    while(!stk.empty()){
        cout << stk.top() << endl;
        stk.pop();
    }

    return 0;
}
