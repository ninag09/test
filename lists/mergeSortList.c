#include "list.h"

// Using pass by value

/*Link* merge(Link* list1, Link* list2){
    Link* head = NULL;
    if(list1 == NULL){
        return list2;
    }
    else if(list2 == NULL){
        return list1;
    }

    if (list1->data <= list2->data){
        head = list1;
        head->next = merge(list1->next, list2);
    }
    else{
        head = list2;
        head->next = merge(list1, list2->next);
    }
    return head;
}
*/

// Using pass by refernce
void merge(Link*** head, Link* list1, Link* list2){
    Link* temp = NULL;
    Link* temp1 = NULL;
    if(list1 == NULL){
        **head = list2;
        return;
    }
    else if(list2 == NULL){
        **head = list1;
        return;
    }

    if (list1->data <= list2->data){
        **head = list1;
        temp = **head;
        temp = temp->next;
        **head = temp;
        merge(head, list1->next, list2);
        temp1 = **head;
        **head = list1;
        temp = **head;
        temp->next = temp1;
        **head = temp;
    }
    else{
        **head = list2;
        temp = **head;
        temp = temp->next;
        **head = temp;
        merge(head, list1, list2->next);
        temp1 = **head;
        **head = list2;
        temp = **head;
        temp->next = temp1;
        **head = temp;
    }
}

void mergeSort(Link **head){
    Link *ref = *head;
    Link *list1 = NULL;
    Link *list2 = NULL;
    int mid = 0;

    if(ref == NULL || ref->next == NULL){
        return;
    }
    else{
        mid = listLength(ref)/2;
        list1 = ref;
        while (mid > 1){
            list1 = list1->next;
            mid--;
        }
        list2 = list1->next;
        list1->next = NULL;
        list1 = ref;
    }
    mergeSort(&list1);
    mergeSort(&list2);
    merge(&head, list1, list2);
    //*head = merge(list1, list2);
}

int main()
{
    Link* head = NULL;

    insertLast(&head, 2);
    insert(&head, 3);
    insert(&head, 4);
    insert(&head, 4);
    insert(&head, 4);
    insert(&head, 1);
    insert(&head, 6);
    insert(&head, 6);
    insertLast(&head, 5);
    insert(&head, 7);

    printList(head);
    printf("\n");

    mergeSort(&head);

    printList(head);
    printf("\n");

    cleanup(&head);
    return 0;
}
