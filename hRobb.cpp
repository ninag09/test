#include "common.h"

using namespace std;

int hRobb(vector<int> &v, int l, int s){
    if(s > l)
        return 0;
    return v[s] + hRobb(v,l,s+2);
}

int main(){
    
    vector<int> v;
    inputIntVec(v,true);
    int even = hRobb(v, v.size()-1, 0);
    int odd = hRobb(v, v.size()-1, 1);

    int res = even > odd ? even : odd;
    cout << res << endl;
    return 0;
}
