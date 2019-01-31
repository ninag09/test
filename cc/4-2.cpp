#include "common.h"

bool isRoute(graph& g, int s, int e, vector<bool>& vis, vector<int>& res){
    vis[s] = true;
    if(s == e) return true;
    for(auto it=g.aList[s].begin(); it!=g.aList[s].end(); it++){
        if(!vis[*it]){
            if(isRoute(g,*it,e,vis,res)){
                res.push_back(*it);
                return true;
            }
            else continue;
        }
    }
    return false;
}

int main(){
/*       5
         ^
         |
         4 ------> 6
         ^         ^
         |         |

    0 -> 1 -> 2 -> 3
*/
    graph g(7);
    g.addEdge(0,1);
    g.addEdge(1,4);
    g.addEdge(1,2);
    g.addEdge(2,3);
    g.addEdge(3,6);
    g.addEdge(4,5);
    g.addEdge(4,6);
 
    vector<bool> vis(7,false);
    vector<int> res;
    int s = in<int>();
    int e = in<int>();
    if(isRoute(g, s, e, vis, res)){
        res.push_back(s);
        OUT("Route found: ");
        printVec(res);
        return 0;
    }
    OUT("No route found"<<eol);
    return 0;
}
