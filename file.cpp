#include <iostream>
#include <fstream>

using namespace std;

int main(){
    
    fstream fin("text.txt", fstream::binary | ifstream::in | ofstream::out);
//    ifstream fout("text.txt", ofstream::binary);

    string line;
    string line2;
    
    if(fin.is_open()){// && fout.is_open()){
            getline(fin,line);
            getline(fin,line2);
            cout << line << endl;
            cout << line2 << endl;
            fin.seekp(fin.beg);
            line2.push_back('\n');
            line.push_back('\n');
            fin.write(line2.c_str(),line2.size());
            fin.write(line.c_str(),line.size());
            cout << fin.tellp() << endl;
    }
    else
        cout << "File not opened" << endl;
    fin.close();
//    fout.close();

    return 0;
}
