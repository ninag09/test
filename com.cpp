#include "common.h"

using namespace std;

//unordered_map<string,int> m;
    
//void permute(string str, string out,int &count) 
//{
//    if (str.size() == 0) {
//        if(m.find(out)==m.end()){
//            m.insert(make_pair(out,count));
//            cout << out << endl;
//            count++;
//        }
//        return; 
//    } 
//  
//    for (int i = 0; i < str.size(); i++) {
//        permute(str.substr(1), out + str[0],count); 
//        rotate(str.begin(), str.begin() + 1, str.end()); 
//    } 
//} 

void backtrack(string s, string &res, int &count, vector<bool> &v){
    if(res.size() == s.size()){
//        cout << res << endl;
        count++;
        return;
    }
    for(int i=0; i<s.size(); i++){
        if(v[i] || (i > 0 && s[i] == s[i-1] && !v[i - 1])) continue;
        v[i]=true;
        res.push_back(s[i]);
        backtrack(s,res,count,v);
        v[i]=false;
        res.pop_back();
    }
}

int combinations(int n){
    int temp = n;
    int q = n/3;
    string str;
    vector<string> l(q+1);
    while(temp--)
        l[0]+="1";
    temp = n;
    for(int i=1; i<=q; i++){
        temp = temp-(i*3);
        for(int j=0; j<=temp; j++){
            if(j == temp){
                int k = i;
                while(k--)
                    l[i]+="3";
                break;
            }
            l[i]+="1";
        }
    temp = n;
    }
    string res;
    int count=0;
    for(auto x:l){
        int s = x.size();
        if(x[0] == x[s-1]){
//            cout << x << endl; 
            count++;
        }
        else{
            vector<bool> v(s+1);
            backtrack(x,res,count,v);
        }
    }
//    for(auto x:l){
//        res.clear();
//        permute(x,res,count);
//    }
    return count;
}

int main(){
   int n = in<int>();
   cout << combinations(n) << endl;
   return 0;
}
