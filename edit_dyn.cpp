#define DISABLE_TRACE
#include "common.h"

#define MAT 0
#define INS 1
#define DEL 2

typedef struct Cell{
    int cost;
    int parent;
    Cell():cost(0),parent(-1){};
}cell;

void init(vector<vector<cell>> &m, int l1, int l2){
    m[0][0].parent = -1;
    for(int i=1; i<l1; i++)
        m[0][i].cost = i;
    for(int i=1; i<l2; i++)
        m[i][0].cost = i;
    return;
}

int editDist(vector<vector<cell>> &m, string &s, string &act){
    int opt[3];
    int i,j;
    for(i=1; i<s.size(); i++)
        for(j=1; j<act.size(); j++){
            TDEBUG(i << " " << j << eol);
            opt[MAT] = m[i-1][j-1].cost + (s[i] != act[j]);
            opt[INS] = m[i][j-1].cost + 1;
            opt[DEL] = m[i-1][j].cost + 1;
            m[i][j].cost = opt[MAT];
            m[i][j].parent = MAT;
            if(m[i][j].cost > opt[INS]){
                m[i][j].cost = opt[INS];
                m[i][j].parent = INS;
            }
            if(m[i][j].cost > opt[DEL]){
                m[i][j].cost = opt[DEL];
                m[i][j].parent = DEL;
            }
        }
    return m[i-1][j-1].cost;
}


int main(){
    
    string s1;
    string actual;
    getline(std::cin,s1);
    getline(std::cin,actual);

    int s1Len = s1.size();
    int s2Len = actual.size();
    if(s1Len < s2Len)
        s1Len = s2Len;

    vector<vector<cell>> m(s1Len+1,vector<cell>(s1Len+1));
    init(m,s1Len+1,s1Len+1);
    s1.insert(0," ");
    actual.insert(0," ");
    OUT(editDist(m,s1,actual) << eol);
    for(auto x:m){
        for(auto y:x)
            TLINE(y.cost << " ");
        TLINE(eol);
    }
    return 0;
}
