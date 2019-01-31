#include<iostream>
#include<string>
#include<fstream>
#include<vector>
#include<list>

using namespace std;

#define USE_VECTOR
//#define USE_LIST

typedef struct Guest{
    string name;
    string gender;
    int age;
}guest;

#ifdef USE_VECTOR
    typedef vector<guest> cont;
#elif defined USE_LIST
    typedef list<guest> cont;
#endif

void read_file(cont& guests){
    string in_str;
    ifstream in_file("guests.txt");
    if(in_file.is_open()){
        guest temp;
        while(getline(in_file,in_str)){
            temp.name = in_str;
            getline(in_file,in_str);
            temp.gender = in_str;
            getline(in_file,in_str);
            temp.age = stoi(in_str);
            guests.push_back(temp);
        }
        in_file.close();
    }
    else
        cout << "Unable to open file" << endl;
}

void printData(guest* it){
    cout << "Name: " << it->name << endl;
    cout << "Gender: " << it->gender << endl;
    cout << "Age: " << it->age << endl;
}

void print(cont* guests,int index=-1){
    auto it = guests->begin();
    cout << "-----------------------------" << endl;
    if(index != -1 && index < guests->size()){
        it = it+index;
        printData(&*it);
        return;
    } 
    while(it != guests->end()){
        printData(&*it);
        it++;
    }
    cout << "-----------------------------" << endl;
}

void remove(cont* guests, int index){
    if(guests->size() <= index){
        cout << "Index out of range" << endl;
        return;
    }
    auto it = guests->begin();
    it = it+index;
    guests->erase(it);
    print(guests);
}

float average(cont& guests){
    float avg = 0.0f;
    for(auto&& g : guests)
        avg += g.age;
    return avg/guests.size();
}
int main(){
    cont* guests = new cont;
    read_file(*guests);
    print(guests);
    //remove(guests,9);
    cout << "Average age is: "<< average(*guests) << endl;
    return 0;
}
