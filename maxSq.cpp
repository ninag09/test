#include "common.h"

int maxSquare(vector<vector<int>> &board,int r,int c, int &res){
    int val=0;
    if(r > 4 || c > 4) return 0;
    if(board[r][c])
        val = 1 + std::min(maxSquare(board,r,c+1,res),std::min(maxSquare(board,r+1,c,res), maxSquare(board,r+1,c+1,res)));
    else    
        val = std::min(maxSquare(board,r,c+1,res),std::min(maxSquare(board,r+1,c,res), maxSquare(board,r+1,c+1,res)));
    res = std::max(val,res);
    return val;
}

int main(){
    vector<vector<int>> board 
    {   {1,1,0,0,1},
        {0,1,1,1,1},
        {0,1,1,1,1},
        {1,1,1,1,1},
        {0,1,0,1,1}
    };
    int res = 0; 
    maxSquare(board,0,0,res);
    OUT("Max Sq: " << res << eol);
    return 0;
}
