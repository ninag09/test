#include <iostream>
#include <list>

using namespace std;

int main(){
    list<int> *cont;

    cont = new list<int>[3];

    cont[0].push_back(4);
    cont[0].push_back(2);
    cont[1].push_back(3);
    cont[2].push_back(4);

    list<int>::iterator j;
    for(int i=0; i<3 ;i++){
        for(j=cont[i].begin(); j != cont[i].end(); j++)
            cout << *j << endl;
        }

    return 0;

    }
