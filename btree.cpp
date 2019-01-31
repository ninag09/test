#include <iostream>

using namespace std;

class Node{
    public:
        Node(int data){
            this->data = data;
            left = NULL;
            right = NULL;
            }

        void insert(int value){
            if (value <= data){
                if(left == NULL)
                    left = new Node(value);
                else
                    left->insert(value);
            }
            else{
                if(right == NULL)
                    right = new Node(value);
                else
                    right->insert(value);
                }
            }

        bool find (int value){
            Node* current = this;
            while(current){
                if (current->data == value)
                    return true;
                else if(current->data > value)
                    current = current->left;
                else
                    current = current->right;
            }
            return false;
        }
/*
        bool find(int value){
            if(data == value)
                return true;
            else if (value < data){
                if (left == NULL)
                    return false;
                else
                    return left->find(value);
                }
            else
                if (right == NULL)
                    return false;
                else
                    return right->find(value);
            }
*/
        void printTree(){
            if (left != NULL)
                left->printTree();
            cout << data << endl;
            if (right != NULL)
                right->printTree();
            }

    private:
        int data;
        Node* left;
        Node* right;
    };

int main(int argc, char* argv[]){
    Node root(5);
    root.insert(1);
    root.insert(6);
    root.insert(7);
    root.insert(9);
    root.insert(2);
    root.insert(3);
    root.insert(99);
    root.insert(600);
    root.insert(345);
    
    if(argc != 2){
        root.printTree();
        return 0;
    }

    int arg = atoi(argv[1]);
    if(root.find(arg))
        cout << "Found" << endl;
    else
        cout << "Not Found" << endl;

    return 0;
    }
