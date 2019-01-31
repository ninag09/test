#include "common.h"

using namespace std;

bool dfs(graph& g, int v, int e, vector<bool> &vis){
    cout << v << endl;
    if(v == e) 
        return true;
    list<int>::iterator itr;
    for(itr=g.aList[v].begin(); itr!=g.aList[v].end(); itr++){
        if(!vis[*itr]){
            vis[*itr]=true;
            if (dfs(g, *itr, e, vis))
                return true;
            else
                continue;
        }
    }
    return false;
}


int main(){
    
    int v = 4;
    graph g(v);
    g.addEdge(0,1);
    g.addEdge(0,2);
    g.addEdge(1,3);
    g.addEdge(2,3);
    vector<bool> vis(v,false);
    vis[0] = true;
    if(dfs(g,0,2,vis))
        cout << "Found" << endl;
    else
        cout << "No routes round" << endl;

    return 0;
}
