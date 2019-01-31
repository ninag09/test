#include "common.h"

using namespace std;

bool done = false;
bool next_square(vector<vector<char>>& board, int &r, int &c){
    for(int x = 0; x < board.size(); x++)
        for(int y = 0; y < board[x].size(); y++)
            if(board[x][y]=='.'){
                r = x;
                c = y;
                return true;
            }
    return false;
}

//bool inSector(char ch, int sRow, int sCol, vector<vector<char>> &board){
//    for(int r=0; r<3; r++)
//        for(int c=0; c<3; c++)
//            if(board[r+sRow][c+sCol]==ch)
//                return true;
//    return false;
//}

bool isValid(char ch, int r, int c, vector<vector<char>> &board){
    for(int i=0; i<9; i++){
        if(board[r][i]==ch) return false;
        if(board[i][c]==ch) return false;
        if(board[r-r%3+i/3][c-c%3+i%3]==ch) return false;
    }
    return true;
}

bool backtrack(vector<vector<char>> &board, int r, int c, int &count){
    count++;
    if(!next_square(board,r,c)){
        done = true;
        return true;
    }
    for(int i=1; i<=9 ;i++){
        if(isValid(i+'0',r,c,board)){
            board[r][c] = i+'0';
            if(backtrack(board,r,c,count))
                return true;
            board[r][c] = '.';
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

void printBoard(vector<vector<char>> &board){
    for(auto x: board){
        for(auto y:x)
            cout << y << " ";
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
    printBoard(board);
    solveSudoku(board);
    cout << endl;
    printBoard(board);
    return 0;
}
