#include "list.h"

int main()
{
    Link* head = NULL;

    insert(&head, 5);
    insertPos(&head, 3 , 0);
    insertPos(&head, 5 , 1);
    insertPos(&head, 4 , 2);
    insertPos(&head, 2 , 3);
    insertPos(&head, 10, 1);

    printList(head);
    return 0;
}
