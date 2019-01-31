#include<iostream>
#include<deque>

using namespace std;

int main(){
    deque<int> num;
    int temp = 0;
    
    cout << "Pushing back \n";
    while(true){
        cout << "Enter Number: ";
        cin >> temp;
        if(temp < 0) break;
        num.push_back(temp);
    }
    
    cout << "Pushing front \n";
    while(true){
        cout << "Enter Number: ";
        cin >> temp;
        if(temp < 0) break;
        num.push_front(temp);
    }

    for(auto i : num)
        cout << i << ' ';
    cout << endl;

    return 0;
}
