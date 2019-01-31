#include<iostream>

using namespace std;

void check(int*& data){
    *data = 10;
    return;
}

void check1(int** data){
    **data = 20;
    return;
}

void check2(int& data){
    data = 30;
    return;
}

int main()
{
    int test = 0;
    int* ptr = &test;
    cout << test << endl;

    check(ptr);
	cout << test << endl;

    check1(&ptr);
	cout << test << endl;

    check2(*ptr);
	cout << test << endl;

    return 0;
}
