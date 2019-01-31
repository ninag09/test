#include<iostream>

template < typename T>
class List
{
    public:
    typedef struct link{
        T data;
        struct link* next;
    }Link;
    
    Link* addNode(T data);

    };

template <typename T>
Link* List::addNode(T data){
    Link* newNode = (Link*) malloc(sizeof(T));
    newNode -> data = data;
    newNode -> next = NULL;
    return newNode;
    }

void printList(Link* head){
    Link* ptr = head;
    while(ptr != NULL){
		cout << ptr->data << endl;
        ptr = ptr->next;
    }
}
