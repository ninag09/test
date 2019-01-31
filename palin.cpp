#include "common.h"

using namespace std;

bool check(stack<char> stk, string s, int l){
    int i=0;
    bool flag;
    char ch = stk.top();
    while(!stk.empty() && s[i]==ch && i<l){
        if(s[i] == stk.top())
            flag = false;
        if(i<l-1 && s[i+1] == stk.top())
            flag = true;
        stk.pop();
        i++;
    }
    return flag;
}

int palin(stack<char> stk, string str){
    int res=0;
    int j=0, len=str.size();
    cout << str << endl;
    if(str[j] != stk.top()){
        res++;
        stk.pop();
    }
    else{
        char temp = stk.top();
        stk.pop();
        if(!stk.empty() && str[j] == stk.top()){
            if(check(stk, str, len))
            //if(j<len-1 && str[j+1] == stk.top())
                stk.push(temp);
            else
                res++;
        }
        else
            stk.push(temp);
    }
//    else{
//        res+=2;
//        stk.pop();
//        if(!stk.empty() && str[j]==stk.top()){
//            if(j<len-1 && str[j+1]==stk.top()){
//                res++;
//                j++;
//            }
//            ++res;
//            ++j;
//            stk.pop();
//        }
//        else
//            j++;
//    }
    while(!stk.empty() && j < len && str[j] == stk.top()){
        stk.pop();
        res+=2;
        j++;
    }
    //if(!stk.empty() && str[j-1]==stk.top()) ++res;
    return res;
}

int longestPalindrome(string &s){
    int count=0;
    char lChar;
    stack<char> stk;
    int n = s.size();
    int ans=0;
    for(int i=0; i<n; i++){
        if(!stk.empty() &&(s[i] == stk.top() || s[i] == lChar)){
            int pal = palin(stk, s.substr(i,n-i));
            cout << pal << endl;
            if(pal > count){
                count = pal;
                ans = i - (pal+1)/2;
            }
        }
        if(!stk.empty())
            lChar = stk.top();
        stk.push(s[i]);
    }
    cout << s.substr(ans, count) << endl;
    return count;
}

int main(){
    
    //string str = "iwasdrivingmycivicracecardowntheroad";
    //string str = "procbppbxrnsxyrgdsooosgqlkzvorrrsave";
    string str = "civvic";
    //string str = "220202021";
    cout << longestPalindrome(str) << endl;

    return 0;
}
