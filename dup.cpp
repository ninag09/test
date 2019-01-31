#include "common.h"

using namespace std;

void dup(string str){
    int l = str.size();
    if(l<2) return;
    int t=1;
    int j =0;
    for(int i = 1; i<l; i++){
        for(j=0; j<t; j++){
            if(str[j] == str[i]) break;
        }
        if(t == j){
            str[t] = str[i];
            t++;
        }
    }
    str[t] = '\0';
}

int main(){
    string str = in<string>();
    dup(str);
    cout << str.c_str() << endl;

    return 0;
}
