#include "common.h"

using namespace std;

bool unique(string& str){
    vector<bool> vec(256,false);
    for(auto i: str){
        if(vec[(int)i]) return false;
        vec[(int)i]=true;
    }
    return true;
}

int main(){
    string str = in<string>();
    if(unique(str)) cout << "Unique" << endl;
    else cout << "Not unique" << endl;

    return 0;
}
