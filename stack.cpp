#include<iostream>
#include<stack>
#include<string>

using namespace std;

int main(){

    stack<string> back;
    stack<string> forward;
    string str;

    while(true){
        cout << "1.Visit 2.Back 3.Forward \n";
        cin >> str;
        if(str=="exit") break;
        else if(str=="1"){
            cout << "Enter URL: ";
            cin >> str;
            while(!forward.empty())
                forward.pop();
            back.push(str);
        }
        else if(str=="2"){
            forward.push(back.top());
            back.pop();
        }
        else if(str=="3"){
            if(forward.empty())
                cout << "No Forward history " << endl;
            else{
                back.push(forward.top());
                forward.pop();
            }
        }
        else
            cout<< "Invalid Input\n";
        if(back.empty()) break; 
        cout << "\nCurrent URL: " << back.top() << endl;
    }

    return 0;
}
