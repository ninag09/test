#include <iostream>
#include <map>
#include <vector>
#include <set>

using namespace std;

int main(){

    map<char,int> m;
    m['a'] = 5;
    m['c'] = 4;
    m['b'] = 8;
    m['d'] = 9;
    m['e'] = 1;
    m['f'] = 2;

    for(auto itr = m.begin(); itr != m.end(); itr++){
        cout << itr->first << " " << itr->second << endl;
    }
    cout << endl;

    typedef function<bool(pair<char,int>,pair<char,int>)> Comp;

    Comp compare =  [](const auto &val1, const auto &val2){
       return (val1.second != val2.second) ? val1.second < val2.second : val1.first < val2.first;
    };


    set<pair<char,int>,Comp> res(m.begin(), m.end(), compare);
    
    for(auto &x: res)
        cout << x.first << " " << x.second << endl;
    return 0;
}
