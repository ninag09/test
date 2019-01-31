#include "common.h"

using namespace std;

int check(stack<char> stk, const char *str){
    int res=0;
    bool odd=false;
    if(*str != stk.top()){
        odd = true;
        stk.pop();
    }
    while(!stk.empty() && *str != '\0' && *str == stk.top()){
        str++;
        res++;
        stk.pop();
    }
    res = res*2;
    if(odd)
        return ++res;
    return res;
}

int longestPalindrome(string &str){
    int count=0;
    char lChar;
    stack<char> stk;
    const char* s = str.c_str();
    while(*s != '\0'){
        if(!stk.empty() &&(*s == stk.top() || *s == lChar)){
            int pal = check(stk, s);
            if(pal > count){
                count = pal;
            }
        }
        if(!stk.empty())
            lChar = stk.top();
        stk.push(*s);
        s++;
    }
    return count;
}

int main(){
    
    string str = "iwasdrivingmycivicracecardowntheroad";
    cout << longestPalindrome(str) << endl;

    return 0;
}
