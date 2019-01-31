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
int l1,l2, flag = 0;
Link* head = NULL;
Link* dummyHead = (Link*) malloc(sizeof(Link));
Link* add = dummyHead;
    while(head1 != NULL || head2 != NULL){
        if(flag)
        add = (Link*) malloc(sizeof(Link));
        flag = 1;
        if(!head1)l1=0;
        else l1 = head1->data;
        if(!head2)l2=0;
        else l2 = head2->data;
        add->data = l1 + l2 + carry;
        add->next=head;
        head = add;
        carry = 0;
        if(head->data >= 10){
            carry = head->data/10;
            head->data = head->data % 10;
            }
        if(head1) head1 = head1->next;
        if(head2) head2 = head2->next;
	    if(head1 == NULL && head2 == NULL && carry != 0){
	        Link* add = (Link*) malloc(sizeof(Link));
            add->data=carry;
            add->next=head;
            head = add;
            break;
        }
/*      if(head1 == NULL){
            while(head2 != NULL && carry != 0){
                Link* add = (Link*) malloc(sizeof(Link));
                if(head2)add->data = head2->data + carry;
                else add->data = carry;
                add->next=head;
        		head = add;
        		carry = 0;
        		if(head->data >= 10){
            		carry = head->data/10;
            		head->data = head->data % 10;
            	}
        		head2 = head2->next;
            }
        }
        if(head2 == NULL){
            while(head1 != NULL && carry != 0){
                Link* add = (Link*) malloc(sizeof(Link));
                if(head1)add->data = head1->data + carry;
                else add->data = carry;
                add->next=head;
        		head = add;
        		carry = 0;
        		if(head->data >= 10){
            		carry = head->data/10;
            		head->data = head->data % 10;
            	}
        		head1 = head1->next;
            }
        }*/
    }
    printList(dummyHead);
    Link* next = NULL;
    Link* prev = NULL;
    while(head){
        next = head->next;
        head->next = prev;
        prev = head;
        head = next;
    }

return prev;
}

/*
Link* addtwonum(Link* head1, Link* head2){
int carry = 0;
Link* res = head2;
    while(head1 != NULL){
        head2->data = head1->data + head2->data + carry;
        carry = 0;
        if(head2->data >= 10){
            carry = head2->data/10;
            head2->data = head2->data % 10;
            }
        head1 = head1->next;
	    if(head1 == NULL && carry != 0){
	        Link* add = (Link*) malloc(sizeof(Link));
            add->data=carry;
            add->next=NULL;
            head2->next = add;
        }
        head2 = head2->next;
    }
return res;
}
*/
