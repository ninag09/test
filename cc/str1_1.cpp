#include<iostream>
#include<string>
using namespace std;

bool unique(string str){
    char arr[256]={0};
    int len = (int)str.size();
    for (int i=0;i<len;i++){
        if(arr[str[i]] != 0)
            return false;
        arr[str[i]] = str[i];
    }
    return true;
}

int main(){
    string str="qwertyuiopasdfghjklzxcvbnm,q";
    if(!unique(str))
        cout << "Not Unique" << endl;
    else
        cout << "Unique" << endl;
    return 0;
}
