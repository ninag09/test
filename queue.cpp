#include <iostream>
#include <list>
#include <thread>
#include <mutex>
#include <chrono>

using namespace std;

mutex m;
list<int> q;
volatile bool shutdown = false;

void pop(){
    while(!shutdown || !q.empty()){
        m.lock();
        if(!q.empty()){
            if(q.back() % 2)
            cout << q.back() << " Odd " << this_thread::get_id() << endl;
            else
            cout << q.back() << " Even" << this_thread::get_id() << endl;
            q.pop_back();
        }
        m.unlock();
    }
    return;
}

int main(){
    thread t2(pop);
    thread t3(pop);
    int i=0;
    while(true){
        m.lock();
        q.push_front(++i);
        cout << i << endl;
        m.unlock();
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
        if(i==100) break;
    }
    shutdown = true;

    t2.join();
    t3.join();
    return 0;
}
