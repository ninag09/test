#include "common.h"

using namespace std;

int stat;

void DFS(vector<vector<string>> & final_ans,vector<string> & save,bool * vis,int up_foor,int now_foor){
    if(now_foor == up_foor){
        stat+=1;
        final_ans.push_back(save);
        return ;
    }
    for(int i = 0; i < up_foor;i++){
        bool ok = true;
        if(vis[i]){
            continue;
        }
        for(int j = 1; j <= now_foor ;j++){
            //  cout << i << j << "|" << now_foor << endl;
            if((i - j >= 0 && save[now_foor - j][i - j] == 'Q') ||(i + j < up_foor && save[now_foor - j][i + j] == 'Q')){
                ok = false;
                break;
            }
        }
        if(ok){
            save[now_foor][i] = 'Q';
            vis[i] = true;
            DFS(final_ans,save,vis,up_foor,now_foor + 1);
            vis[i] = false;
            save[now_foor][i] = '.';
        }
    }
    return ;
}
vector<vector<string>> solveNQueens(int n) {
    vector<vector<string>> ans;
    ans.clear();
    bool col[100];
    vector<string> queen_map;
    //string s(n,'.');
    string s;
    for(int i = 0; i < n; i++){
        s.push_back('.');
    }
    queen_map.clear();
    for(int i = 0; i < n; i++){
        queen_map.push_back(s);
    }
    memset(col,false,sizeof(col));
    DFS(ans,queen_map,col,n,0);
    return ans;
}

int main(){
    int N = in<int>();
    solveNQueens(N);
    cout << stat << endl;
    return 0;
}
