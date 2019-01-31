#include "common.h"

using namespace std;

bool done = false;
int fCount;

void fillPossible(vector<vector<char>>& board, int &r, int &c, vector<bool> &possible){
    for(auto y:possible)
        y=false;
    for(int i=0; i<9; i++){
        if(board[r][i]!='.') possible[board[r][i]-'0'-1] = true;
        if(board[i][c]!='.') possible[board[i][c]-'0'-1] = true;
        if(board[r-r%3+i/3][c-c%3+i%3]!='.') possible[board[r-r%3+i/3][c-c%3+i%3]-'0'-1]=true;
    }
    return;
}

int countPossible(vector<bool> &possible){
    int pCount=0;
    for(int x=0; x<9; x++)
        if(!possible[x]) pCount++;
    return pCount;
}

bool lookAhead(vector<vector<char>> &board){
    vector<bool> tPoss(9,false);
    for(int x = 0; x < 9; x++)
        for(int y = 0; y < 9; y++){
            if(board[x][y] == '.'){
                fillPossible(board,x,y,tPoss);
                if(!countPossible(tPoss))
                    return false;
            }
        }
    return true;
}

void next_square(vector<vector<char>>& board, int &r, int &c, vector<bool> &possible){
    vector<bool> tPoss(9,false);
    int min = 10;
    for(int x = 0; x < 9; x++)
        for(int y = 0; y < 9; y++){
            if(board[x][y] == '.'){
                fillPossible(board,x,y,tPoss);
                int cPoss = countPossible(tPoss);
                if(min > cPoss){
                    min = cPoss;
                    r = x;
                    c = y;
                    possible = tPoss;
                    if(min < 3)break;
                }
            }
        }
    return;
}

bool backtrack(vector<vector<char>> &board, int r, int c, int &count){
    count++;
    vector<bool> possible(9,false);
    if(!fCount){
        done = true;
        return true;
    }
    next_square(board,r,c,possible);
    for(int i=1; i<=9 ;i++){
        if(!possible[i-1]){
            board[r][c] = i+'0';
            if(!lookAhead(board)){
                board[r][c] = '.';
                continue;
            }
            fCount--;
            if(backtrack(board,r,c,count))
                return true;
            board[r][c] = '.';
            fCount++;
            if(done) return true;
        }
    }
    return false;
}

void solveSudoku(vector<vector<char>>& board) {
    int count=0;
    backtrack(board,0,0,count);
    cout << "Tries: " << count << endl;
    return;
}

void printBoard(vector<vector<char>> &board,bool count=false){
    for(auto x: board){
        for(auto y:x){
            if(y=='.') fCount++;
            cout << y << " ";
        }
        cout << endl;
    }
    return;
}

int main(){
    vector<vector<char>> board(9,vector<char>(9));
    char v[9][9] =
    {
        {'.','.','.','.','.','.','.','1','2'},
        {'.','.','.','.','3','5','.','.','.'},
        {'.','.','.','6','.','.','.','7','.'},
        {'7','.','.','.','.','.','3','.','.'},
        {'.','.','.','4','.','.','8','.','.'},
        {'1','.','.','.','.','.','.','.','.'},
        {'.','.','.','1','2','.','.','.','.'},
        {'.','8','.','.','.','.','.','4','.'},
        {'.','5','.','.','.','.','6','.','.'}
    };
//    {
//        {'5','3','.','.','7','.','.','.','.'},
//        {'6','.','.','1','9','5','.','.','.'},
//        {'.','9','8','.','.','.','.','6','.'},
//        {'8','.','.','.','6','.','.','.','3'},
//        {'4','.','.','8','.','3','.','.','1'},
//        {'7','.','.','.','2','.','.','.','6'},
//        {'.','6','.','.','.','.','2','8','.'},
//        {'.','.','.','4','1','9','.','.','5'},
//        {'.','.','.','.','8','.','.','7','9'}
//    };
    for(int i=0; i<9; i++)
        board[i].assign(v[i], v[i]+9);
    printBoard(board,true);
    solveSudoku(board);
    cout << endl;
    printBoard(board);
    return 0;
}
