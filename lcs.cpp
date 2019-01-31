#include "common.h"

using namespace std;

string lcs(string str){
    string res="";
    unordered_set<char> Set;
    int i=0, j=0, ans=0;
    int len = str.size();
    while(i < len && j < len){
        if(Set.find(str[i]) == Set.end()){
            Set.insert(str[i++]);
            if(i-j > ans){
                ans = i-j;
                res = str.substr(j,ans);
            }
        }
        else
            Set.erase(str[j++]);
    }

    return res;
}

int main(){

    string str = in<string>();
    cout << lcs(str) << endl;

    return 0;
}
