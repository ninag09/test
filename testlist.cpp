#include "common.h"

using namespace std;

int main(int argc, char** argv){
    vector<vector<string>> l(50,vector<string>(100));
    string file = argv[1];
    ifstream fin;
    fin.open(file.c_str());
    int row=0;
    int col=0;
    bool done = false;
    string line;
    fin.seekg (0, fin.end);
    int length = fin.tellg();
    fin.seekg (0, fin.beg);
    unsigned char* buffer = new unsigned char [length];
    fin.read(reinterpret_cast<char*>(buffer),length);
    cout << buffer << endl;
    int len=0;
    int i=0;
    auto start = chrono::steady_clock::now();
    for( i=0; i<length; i++){
        if(buffer[i] == '\n'){
            string lin(reinterpret_cast<char*>(&buffer[i-len]),len);
            if(col==100){ row++; col=0;}
            l[row].push_back(line);
            col++;
//            cout << lin << endl;
            len = 0;
        }
        len++;
    }
    cout << i << " " << len << endl;
//    while(true){
//        l.push_back(vector<string>());
//        for(int i=0; i<100; i++){
//            if(fin.eof()){
//                done = true;
//                l[row].push_back("");
//                continue;
//            }
//            getline(fin,line);
//            l[row].push_back(line);
//        }
//        cout << row << endl;
//        row++;
//    if(done) break;
//    }
    auto end = chrono::steady_clock::now();
    auto diff = end - start;
    cout << chrono::duration <double, milli> (diff).count() << " ms" << endl;
//    cout << buffer << endl;
    
    delete []buffer;
//    vector<string> add = l[11];
//    for(int j=0; j<10; j++)
//        cout << add[j] << endl;
    return 0;
}
