#include <iostream>
#include <string>
#include "hash.h"

using namespace std;

Hash::Hash(){
    for (int i=0; i<tableSize; i++){
        hashTable[i] = new item;
        hashTable[i]->name = "empty";
        hashTable[i]->drink = "empty";
        hashTable[i]->next = NULL;
    }
}

int Hash::hash(string name){
    int key = 0;
    int len = name.length();
    for(int i=0; i<len; i++)
        key = key + ((int)name[i] * 17);
    return key % tableSize;
}

void Hash::addItem(string name, string drink){
    int index = 0;
    index = hash(name);
    item* ptr = hashTable[index];

    if (ptr->name == "empty"){
        ptr->name = name;
        ptr->drink = drink;
    }
    else{
        item* newItem = new item;
        newItem->name = name;
        newItem->drink = drink;
        newItem->next = NULL;
        while(ptr->next)
            ptr = ptr->next;
        ptr->next = newItem;
    }
}

int Hash::numberOfElements(int index){
    item* ptr = hashTable[index];
    int count = 0;
    if(ptr->name == "empty") return 0;
    count++;
    while(ptr->next){
        count++;
        ptr = ptr->next;
    }
    return count;
}

void Hash::printTable(){
    for (int i=0; i<tableSize; i++){
        cout << "**********************" << endl;
        cout << "Table Entry Bucket " << i+1 << endl;
        int count = numberOfElements(i);
        if(count){
            cout << count << " items in bucket" << endl;
            item* ptr = hashTable[i];
            while(ptr){
            cout << "----------------------" << endl;
            cout << ptr->name << endl;
            cout << ptr->drink << endl;
            ptr = ptr->next;
            }
        }
        else{
        cout << "No elements in bucket" << endl;
        }
    } 
}

bool Hash::findItem(string name){
    int index = hash(name);
    item* ptr = hashTable[index];
    while(ptr){
        if(ptr->name == name){
            cout << name << "'s favourite drink is " << ptr->drink <<"\n"<<endl;
            return true;
        }
        ptr = ptr->next;
    }
    return false;
}

bool Hash::deleteItem(string name){
    int index = hash(name);
    item* ptr = hashTable[index];
    item* p1;
    item* p2;
    item* delptr;
    //First element match none others present
    if(ptr->name == name && ptr->next == NULL){
        cout << ptr->name << "'s info deleted\n" << endl;
        ptr->name = "empty";
        ptr->drink = "empty";
        return true;
    }
    //only one element present, did not match
    if(!ptr->next) return false;
    //first element macth but more elements present
    if(ptr->name == name){
        delptr = hashTable[index];
        hashTable[index] = hashTable[index]->next;
        cout << delptr->name << "'s info deleted\n" << endl;
        delete delptr;
    }
    //None matched in the list
    p1 = ptr;
    p2 = ptr->next;
    while(p2 != NULL && p2->name != name){
        p1 = p2;
        p2 = p2->next;
    }
    if(!p2) return false;
    //match found in middle or end
    delptr = p2;
    p2 = p2->next;
    p1->next = p2;
    cout << delptr->name << "'s info deleted\n" << endl;
    delete delptr;
    return true;
}

// Main function
int main(){
    int input;
    string name;
    string drink;
    Hash abc;
    abc.addItem("Nithesh","White Chocolate Mocha");
    abc.addItem("Nirmith","Pike Roast");
    abc.addItem("Akshay","Dark Roast");
    abc.addItem("Mastershifu","Chai Tea");
    abc.addItem("Ashwin","Chocolate Mocha");
    abc.addItem("Karthik","Ginger Tea");
    abc.addItem("Shashank","Latte");
    abc.addItem("Goyyamaley","Macallan");

    while(true){
        cout<< "\n1.Query\n2.AddItem\n3.DeleteItem\n4.Print Table\n5.Exit\n";
        cin >> input;
        switch(input){
            case 1:
                cout << "Enter name : ";
                cin >> name;
                if(name == "exit") break;
                if(name == "empty") continue;
                if(!abc.findItem(name))
                    cout << name << "'s info not found\n"<<endl;
                break;
            case 2:
                cout << "Enter name : ";
                cin >> name;
                cout << "Enter drink : ";
                cin >> drink;
                abc.addItem(name,drink);
                cout << name << "'s info added successfully\n" << endl; 
                break;
            case 3:
                cout << "Enter name : ";
                cin >> name;
                if(!abc.deleteItem(name))
                    cout << name << "'s info not found\n"<<endl;
                break;
            case 4:
                abc.printTable();
                break;
            case 5:
                return 0;
            default:
                cout << "Invalid Input"<< endl;
                return 0;
        }
    }
    return 0;
}
