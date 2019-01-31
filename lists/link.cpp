#include <iostream>
#include <cstdlib>
#include <string>
using namespace std;

typedef struct node{
    int key;
    int data;
    struct node* next;
}Node;

Node* head = NULL;
Node* cur  = NULL;

void print()    //print whole list
{
    Node* ptr = head;
    while (ptr != NULL) {
        cout << "Key " << ptr->key << " Data " << ptr->data << endl;
        ptr = ptr->next;
    }
}

void insertFirst (int key, int data) //Insert at begining of list. TODO:implement last and given pos
{
    Node* link = (Node*) malloc(sizeof(Node));

    link->key = key;
    link->data = data;
    link->next = head;
    head = link;
}

int main()
{
    int key, data, pos;
    while(1)
    {
        cout << "Enter key and data" << endl;
        cin >> key >> data;
        insertFirst(key, data);
        print();
    }
}
