#include "common.h"

using namespace std;

vector<string> tab {" ", " ", "abc", "def", "ghi", "jkl",
                               "mno", "pqrs", "tuv", "wxyz"};
//vector<string> tab;

void let(vector<int>& num, int size, int count, string& res){
    if(size == count){          
        cout << res << endl;
        return;   
    }        
    
    for(int i=0; i<tab[num[count]].size(); i++){
        res.push_back(tab[num[count]][i]);
        let(num,size,count+1, res);
        res.pop_back();      
    }
}

int main(){
//    vecType<STR, string> vec;
//    vec.inVec(tab,true);
    vector<int> num;
    inputIntVec<int>(num);
    int size = num.size();
    int count = 0;
    string str = "";
    let(num, size, count, str);
    return 0;
}
