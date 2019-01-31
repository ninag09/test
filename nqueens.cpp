//#define DEBUG_TRACE
#include "common.h"

using namespace std;

int N;

bool placeQueen(vector<vector<bool>> &board, int r, int c){
    for(int i=0; i<N; i++){
        if(board[r][i]) return false;
        if(board[i][c]) return false;
    }
    int j=r,k=c;
    while(j >= 0 && k >= 0){
        if(board[j][k]) return false;
        j--;
        k--;
    }
    j=r; k=c;
    while(j < N && k < N){
        if(board[j][k]) return false;
        j++;
        k++;
    }
    j=r; k=c;
    while(j < N && k >= 0){
        if(board[j][k]) return false;
        j++;
        k--;
    }
    j=r; k=c;
    while(j >= 0 && k < N){
        if(board[j][k]) return false;
        j--;
        k++;
    }
    board[r][c]=true;
    return true;
}

void printBoard(vector<vector<bool>> &board){
    for(auto x: board){
        for(auto y:x)
            TDEBUG(y << " ");
        TDEBUG(eol);
    }
    TDEBUG(eol);
}

bool backtrack(vector<vector<bool>> &board, int queens, int &count, vector<bool> &vis){
    if(queens == N){
            count++;
            TDEBUG(count << eol)
            printBoard(board);
            return false;
    }
    for(int i=0; i<N; i++){
        if(vis[i]) continue;
        if(placeQueen(board,i,queens)){
            vis[i]=true;
            if(backtrack(board, queens+1, count, vis))
                return true;
            vis[i]=false;
            board[i][queens] = false;
        }
    }
    return false;
}

int queenComb(vector<vector<bool>> &board){
    int count = 0;
    vector<bool> vis(4,false);
    backtrack(board, 0, count, vis);
    return count;
}

int main(){
    N = in<int>();
    vector<vector<bool>> board(N,vector<bool>(N,false));
    cout << queenComb(board) << endl;

    return 0;
}
