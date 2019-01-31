#include "list.h"

Link* rev(Link* head){
    Link* prev = NULL;
    Link* next = NULL;

    while(head != NULL){
        next = head->next;
        head->next = prev;
        prev = head;
        head = next;
    }
    return prev;
}

int main(){

    Link* head = NULL;

    insert(&head,1);
    insert(&head,2);
    insert(&head,3);
    insert(&head,4);
    insert(&head,5);
    insert(&head,6);

    printList(head);

    head = rev(head);
    printList(head);

    return 0;
}
