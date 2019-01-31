//#define NOTRACE
#include "common.h"
using namespace std;

int main(){

    string s = "the sky is blue";
    stringstream ss(s);
    string str;
    string res;
    while(getline(ss, str, ' ')){
        res.insert(0, str);
        res.insert(0, " ");
    }
    res.erase(res.begin());
    s = res;
    TRACE(s);
    return 0;
}
