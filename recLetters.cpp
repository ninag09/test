#include<iostream>
#include<vector>
#include<string>
#include<queue>

using namespace std;

vector<string> tab {"", "", "abc", "def", "ghi", "jkl",
                               "mno", "pqrs", "tuv", "wxyz"};

void filld(queue<string>& res, string str, int l);

void letters(vector<int>& num, int n, queue<string>& res){
    res.push("");
    for(int i=0;i<n;i++){
        int l = res.size();
        filld (res, tab[num[i]], l);
    }
    while(!res.empty()){
        cout << res.front() << endl;
        res.pop();
    }
    return;
}

void filld (queue<string>& res,string str, int l){
    vector<string> temp;
    while(!res.empty()){
        temp.push_back(res.front());
        res.pop();
    }
    for(auto ch: str){
        for(auto x: temp){
            x = x+ch;
            res.push(x);
        }
    }
    return;
}

void reqLet(vector<int>& num, int n, string& res, int count){
    if(count == n){
        cout << res << endl;
        return;
    }

    for(int i=0; i<tab[num[count]].size(); i++){
        res.push_back(tab[num[count]][i]);
        reqLet(num, n, res, count+1);
        res.pop_back();
    }
}


int main(){
    int n=0, c=0;
    string resu;
    vector<int> numb;
    while(n>=0){
        cin>>n;
        numb.push_back(n);
    }
    n = numb.size() - 1;
    queue<string> res;
    //letters(numb, n, res);
    reqLet(numb, n, resu, c);
    return 0;
}
