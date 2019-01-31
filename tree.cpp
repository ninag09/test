#include "common.h"

using namespace std;

class btree{
    public:
        btree(int val):data(val), left(nullptr), right(nullptr){};

        void add(int val){
            if(val < data){
                if(left)
                    left->add(val);
                else
                    left = new btree(val);
            return;
            }
            if(right)
                right->add(val);
            else
                right = new btree(val);
        }

        void printTree(btree* ptr){
            if(!ptr) return;
            printTree(ptr->left);
            cout << *ptr << endl;
            printTree(ptr->right);
        }

        int getLeft(btree &ptr){
            if(ptr.left)
                return ptr.left->data;
            return 0;
        }
        
        int getRight(btree &ptr){
            if(ptr.right)
                return ptr.right->data;
            return 0;
        }

        int getData(btree &ptr){
            return ptr.data;
        }

        friend ostream &operator<<(ostream& oStream,btree &p){
            oStream << p.data << " Left: "<< p.getLeft(p) << " Right: "<< p.getRight(p);
            return oStream;
        }
        
    private:
        int data;
        btree* left;
        btree* right;
};

int main(){
    btree root(6);
    root.add(4);
    root.add(5);
    root.add(1);
    root.add(8);
    root.add(7);
    root.add(11);
    root.add(13);
    root.add(9);
    btree* node = &root;
    root.printTree(node);
    return 0;
}
