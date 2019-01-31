#include <iostream>
#include <string>

static const unsigned int TABLE_SIZE = 10;

using namespace std;

typedef struct Item{
    string name;
    string drink;
    Item* next;
}item;

class Hash{
    public:
        Hash();
        void printTable();
        void addItem(string name, string drink);
        int numberOfElements(int index);
        bool findItem(string name);
        bool deleteItem(string name);

    private:
        int hash(string name);
        static const int tableSize = TABLE_SIZE;
        item* hashTable[tableSize];
    };

