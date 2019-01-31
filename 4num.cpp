#include <iostream>
#include <stdlib.h>
#include <sstream>

using namespace std;

string toString(int a, int b, int c, int d){
    string num;
    stringstream s;
    s << a;
    s << b;
    s << c;
    s << d;
    num = s.str();
    return num;
}

int main(){
    int a=2,b=0,c=0,d=0;
    for(b=0; b<10; b++){
        for(c=0; c<10; c++){
            for(d=0; d<10; d++){
                string num = toString(a,b,c,d);
                string rnum = toString(d,c,b,a);
                if(likely(atoi(num.c_str())*4 == atoi(rnum.c_str()))){
                    cout << num << " " << rnum << endl;
                    break;
                }
            }
        }
    }
    return 0;
}
