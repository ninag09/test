#include "common.h"

template <class Key, class Val>
class tree{
    public:
        tree(Key k, Val v): key(k), value(v), left(nullptr), right(nullptr), rThr(true){};

        void insert(tree<Key, Val>* root, Key k, Val v){
            if(k < key){
                if(left)
                    left->insert(root->left, k, v);
                else{
                    left = new tree<Key, Val>(k, v);
                    left->right = root;
                }
            }
            else{
                if(right && !rThr)
                    right->insert(root->right, k, v);
                else{
                    tree<Key, Val>* temp = right;
                    right = new tree<Key, Val>(k, v);
                    if(rThr)
                        right->right = temp;
                    rThr = false;
                }
            }
        }
        
        tree<Key, Val>* hasNext(tree<Key, Val>*& ptr){
            if(ptr->rThr)
                return ptr->right;
            ptr = ptr->right;
            while(ptr->left)
                ptr = ptr->left;
            return ptr;
        }

        void printIter(tree<Key, Val>*& root){
            if(!root) return;
            tree<Key, Val>* ptr = root;
            while(ptr->left)
                ptr = ptr->left;
            while( ptr != nullptr){
                std::cout << ptr->key << " " << ptr->value << std::endl;
                ptr = hasNext(ptr);
            }
        }

        void printTree(tree<Key, Val>*& ptr){
            if(!ptr)
                return;
            printTree(ptr->left);
            std::cout << ptr->key << " " << ptr->value << std::endl;
            printTree(ptr->right);
        }

    private:
        Key key;
        Val value;
        tree* left;
        tree* right;
        bool rThr;
};

template <class Key, class Val>
class jmap{
    public:
        jmap():root(nullptr){};
/*
        tree<Key, Val>* insert(Key k, Val v){
            if(!root){
                root = new tree<Key, Val>(k, v);   
                return root;
            }
         
            if(root->key > k)
                root->left = jmap<Key, Val>().insert(k, v);
            else
                root->right = jmap<Key, Val>().insert(k, v);
            return root;
        }
*/
        void insert(Key k, Val v){
            if(!root){
                root = new tree<Key, Val>(k, v);
                return;
            }
            root->insert(root, k, v);
        }

        void printMap(){
            if(root)
                root->printIter(root);
                //root->printTree(root);
            return;
        } 

    private:
        tree<Key, Val>* root;
};

int main(){
    
    jmap<int, int> a_map;
    a_map.insert(20,10);
    a_map.insert(30,10);
    a_map.insert(10,10);
    a_map.insert(5,10);
    a_map.insert(16,10);
    a_map.insert(17,10);
    a_map.insert(14,10);
    a_map.insert(13,10);
   
    a_map.printMap();
    return 0;
}
