#include "list.h"

void sort(Link** head)
{
    if(*head == NULL)
        return;

    // First link in sorted list
    Link* nHead = *head;
    *head = nHead->next;
    nHead->next = NULL;
    
    // Now head is pointing to second element
    // start comaprision from here acc to insSort algo
    Link* ref = *head;
  
    // Static head of the sorted list
    Link* sHead = nHead;

    while(ref != NULL){
        Link* key = ref;
        ref = key->next;
        key->next = NULL;
        nHead = sHead;
		if(key->data <= nHead->data){
			//insert link after head
			Link* temp = nHead;
			nHead = key;
			nHead->next = temp;
			sHead = nHead;
		}
        else{
            while(sHead->next != NULL && key->data > sHead->next->data){
                sHead = sHead->next;
            }
            key->next = sHead->next;
            sHead->next = key;
        }
/*        while(nHead != NULL){
            printf("%d nHead %d key\n",nHead->data,key->data);
            if(key->data < nHead->data){
                //insert link after head
                Link* temp = nHead;
                nHead = key;
                nHead->next = temp;
                sHead = nHead;
                break;
            }
            if(nHead->next == NULL){
                nHead->next = key;
                break;
            }
            nHead = nHead->next;
        }*/
    }
    *head = sHead;
}
/*
void insSort(Link* ref){
    //Link* ref = *list;
    Link* head = NULL;

    while(ref != NULL){
        Link* curr = ref;
        if(head == NULL || head->data < curr->data){
            curr->next = head;
            head = curr;
        }
        else{
            Link* trav = head;
            while(trav != NULL){
                if(trav->next == NULL || curr->data < trav->next->data){
                    curr->next = trav->next;
                    trav->next = curr;
                    break;
                }
                trav = trav->next;
            }
        }
        ref = ref->next;
    }
    printList(head);
}
*/
int main()
{
    Link* head = NULL;

    insert(&head, 1);
    insert(&head, 1);
    insert(&head, 1);
    insert(&head, 1);
    insert(&head, 2);
    insert(&head, 4);
    insert(&head, 3);
    insert(&head, 6);
    insert(&head, 5);
    insert(&head, 7);
    insert(&head, 13);
    insert(&head, 15);
    insert(&head, 54);
    insert(&head, 512);
    insert(&head, 45);

    printList(head);
    printf("\n");

    sort(&head);

    printList(head);
    printf("\n");
    cleanup(&head);
    return 0;
}
