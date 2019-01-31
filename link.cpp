#include "common.h"

using  namespace std;

void reverse(listnode *&curr){
    listnode *prev = NULL, *next = NULL;
    //listnode *curr = head;
    
    while(curr){
       next = curr->next;
       curr->next = prev;
       prev = curr;
       curr = next;
    }
    curr = prev;
}

void push(listnode*& head, int data){
    listnode* temp = new listnode(data);
    temp->next = head;
    temp->prev = NULL;
    if(head)
        head->prev = temp;
    head = temp;
    return;
}

int main(){

    listnode* head = NULL;
    push(head,5);
    push(head,4);
    push(head,3);
    push(head,2);
    push(head,1);

    reverse(head);

    listnode* last;
    while(head){
        cout << head->val << " ";
        last = head;
        head = head->next;
    }
    cout << endl;
    while(last){
        cout << last->val << " ";
        last = last->prev;
    }
    cout << endl;

    return 0;
}
