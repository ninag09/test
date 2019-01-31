#include <iostream>

using namespace std;

class Base
{
public:
    Base(){
        cout << "Base Constructor Called\n";
    }
    virtual ~Base()
    {
        cout << "Base Destructor called\n";
    }
};

class Derived: public Base
{
public:
    Derived(){
        cout << "Derived constructor called\n";
    }
    friend void destroy(Derived* ptr){
        delete ptr;
    }
private:
    ~Derived(){
        cout << "Derived destructor called\n";
    }
};

int main()
{
    Base *b = new Derived;
    delete b;
    Derived *d = new Derived;
    destroy(d);
}
