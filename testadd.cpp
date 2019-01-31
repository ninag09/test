#include <iostream>
using namespace std;
class testb{
    public:
        testb(){
            b = 5;
            c = 10;
        }
        int b;
        int c;
};

class test{
    public:
        test(){
            a = 0;
        }
        void seta(int b){
            a = b;
        }
        int a;
        testb b;
};

void modify(test var){
    cout << var.b.b << " " << var.b.c <<endl;
    var.b.b = 15;
    var.b.c = 20;
    cout << "Modified "<< var.b.b << " " << var.b.c <<endl;
    return;
}

int main(){
    test root;
    modify(root);
    cout << "Main " << root.b.b << " " << root.b.c << endl;
    return 0;
}

/*
void addr(int* x){
    int a = *x;
    printf("%p\n",(int*)&x);
    return;
}

int main(){
    int x = 10;
    printf("main %p\n",(int*)&x);
    addr(&x);
    return 0;
}
*/

