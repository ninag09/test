#include "common.h"

using namespace std;

int calcpatterns(int num, int len, int m, int n, int patt, vector<bool> &vis, vector<vector<int>> &validmoves){
    if(len >= m)
        patt++;
    if(++len > n)
        return patt;
    vis[num] = true;
    for(int i=1; i<=9 ;i++){
        int jump = validmoves[num][i];
        if(!vis[i] && (!jump || vis[jump]))
            patt = calcpatterns(i,len,m,n,patt,vis,validmoves);
    }
    vis[num] = false;
    return patt;
}

int numberOfPatterns(int m, int n) {
    vector<vector<int>> validmoves(10,vector<int>(10,0));
    validmoves[1][9] = validmoves[9][1] = 
    validmoves[2][8] = validmoves[8][2] = 
    validmoves[4][6] = validmoves[6][4] = 
    validmoves[3][7] = validmoves[7][3] = 5;
    validmoves[1][3] = validmoves[3][1] = 2;
    validmoves[1][7] = validmoves[7][1] = 4;
    validmoves[3][9] = validmoves[9][3] = 6;
    validmoves[7][9] = validmoves[9][7] = 8;

    vector<bool> vis(10,false);
    auto calc = [m,n,&vis,&validmoves](int i){
        int r=0;
        return calcpatterns(i,1,m,n,r,vis,validmoves);
    };
    return calc(1)*4 + calc(2)*4 + calc(5);
}

int main(){
    int m = in<int>();
    int n = in<int>();
    cout << numberOfPatterns(m,n) << endl;
    return 0;
}
