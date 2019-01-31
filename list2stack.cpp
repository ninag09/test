#include "common.h"

using namespace std;

class Node{
    public:
        Node(int val){
            this->val = val;
            minVal = 0;
            next = NULL;
         //   prev = NULL;
        }

        void push(int data){
            Node* item = new Node(data);
            if(!head){
                item->minVal = data;
                head = item;
                return;
            }

//            head->next = item;
//            item->prev = head;
            item->next = head;
            item->minVal = min(data, head->val);
            head = item;
            return;
        }

        void pop(){
            if(!head)
                return;
            Node* temp = head;
            //head = temp->prev;
            head = temp->next;
            delete temp;
            return;
        }

        int top(){
            if(head)
                return head->val;
            return -1;
        }

        int getMin(){
            if(head)
                return head->minVal;
            return -1;
        }

    private:
        int val;
        int minVal;
        Node* next;
        Node* head;
};


int main(){
    Node stk(3);
    stk.push(4);
    stk.push(3);
    stk.push(2);

    stk.pop();
    stk.pop();
    cout << stk.top() << endl;
}
