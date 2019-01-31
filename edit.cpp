#include "common.h"

#define MAT 0
#define INS 1
#define DEL 2

int match(char a, char b){
    if(a==b) return 0;
    return 1;
}
int stat;
vector<vector<int>> m(10,vector<int>(10,-1));

int editDist(string &s1, string &s2, int i, int j){
    if(i>=0 && j>=0 && m[i][j] != -1)
        return m[i][j];
   
    stat++;
    int opt[3];
    
    if(i<0) return j+1;
    if(j<0) return i+1;

    opt[MAT] = editDist(s1, s2, i-1, j-1) + match(s1[i],s2[j]); 
    opt[INS] = editDist(s1, s2, i, j-1) + 1;
    opt[DEL] = editDist(s1, s2, i-1, j) + 1;

    m[i][j] = opt[MAT];
    if(m[i][j] > opt[INS]) m[i][j]=opt[INS];
    if(m[i][j] > opt[DEL]) m[i][j]=opt[DEL];
    
    return m[i][j];
}

int main(){
    string s1 = "thou shalt";
    string s2 = "you should";
    cout << editDist(s1,s2,s1.size()-1,s2.size()-1) << endl;
    for(auto x:m){
        for(auto y:x)
            cout << y << " ";
        cout << endl;
    }
//    cout << editDist(s1,s2,s1.size()-1,s2.size()-1) << endl;
    cout << stat << endl;
    return 0;
}
