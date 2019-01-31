#include "trie.h"

int main(){
    Trie dict;
/*    dict.insert("a",1);
    dict.insert("c",1);
    dict.insert("e",1);
    dict.insert("h",1);
    dict.insert("k",1);
    dict.insert("r",1);
    dict.insert("ha",5);
    dict.insert("ck",5);*/
    dict.insert("er",5);
    dict.insert("hac",15);
    //dict.print();
    dict.calculateVal("hackerqwertyhac");
    return 0;
}
