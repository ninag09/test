#include <iostream>
#include <list>
#include <thread>
#include <mutex>
#include <condition_variable>

using namespace std;

mutex m;
mutex mtx;
condition_variable cv;
list<int> q;
volatile bool shutdown = false;
bool ready = false;
bool processed = false;

void pop(){
    while(!shutdown || !q.empty()){
        unique_lock<mutex> lk(mtx);
        cv.wait(lk, []{return ready;});
        m.lock();
        if(!q.empty()){
            cout << q.back() << endl;
            q.pop_back();
        }
        ready = false;
        processed = true;
        m.unlock();
        lk.unlock();
        cv.notify_one();
    }
}

int main(){
    thread t2(pop);
    int i=0;
    while(true){
        m.lock();
        q.push_front(++i);
        ready = true;
        processed = false;
        cout << i << endl;
        m.unlock();
        cv.notify_one();
        unique_lock<mutex> llk(mtx);
        cv.wait(llk, []{return processed;});
        if(i==100) break;
    }
    ready = true;
    cv.notify_one();
    shutdown = true;

    t2.join();
    return 0;
}
