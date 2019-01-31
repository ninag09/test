#include "common.h"
      
using namespace std;
      
void bfs(graph& g, int v){
    list<int> q;
    vector<bool> vis(4,false);
    q.push_back(v);
    vis[v]=true;
    while(!q.empty()){
        v = q.front();
        cout << v << endl;
        q.pop_front();
        list<int>::iterator itr;
        for(itr=g.aList[v].begin(); itr!=g.aList[v].end(); itr++){
            if(!vis[*itr]){
                q.push_back(*itr);
                vis[*itr]=true;
            }
        }
    }
    return;
}


int main(){

    int v = 4;
    graph g(v);
    g.addEdge(0,1);
    g.addEdge(0,2);
    g.addEdge(1,3);
    g.addEdge(2,3);

    bfs(g,0);

    return 0;
}
