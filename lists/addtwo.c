#include<stdio.h>
#include"list.h"

Link* addtwonum(Link* head1, Link* head2);

int main(){

Link* head1 = NULL;
insert(&head1,9);
insert(&head1,9);
insert(&head1,9);
printList(head1);

Link* head2 = NULL;
insert(&head2,4);
insert(&head2,7);
insert(&head2,6);
insert(&head2,2);
printList(head2);

Link* result = NULL;
result = addtwonum(head1, head2);
printList(result);

cleanup(&head1);
cleanup(&head2);
return 0;
}

Link* addtwonum(Link* head1, Link* head2){
int carry = 0;
int l1,l2, sum = 0;
Link* dummyHead = Node(0);
Link* curr = dummyHead;
    while(head1 != NULL || head2 != NULL){
        l1 = head1 ? head1->data : 0;
        l2 = head2 ? head2->data : 0;
        curr->next = Node((l1+l2+carry)%10);
        curr = curr->next;
        carry = (l1+l2+carry)/10;
        if(head1) head1 = head1->next;
        if(head2) head2 = head2->next;
        }
        if(carry){
        curr->next = Node(carry);
        curr = curr->next;
        }
return dummyHead->next;
}
