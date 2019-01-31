#include<unordered_map>
#include<string>
#include<iostream>
#include<tuple>

using namespace std;

class trieNode{
    public:
        trieNode():children(){
            chr = '0';
            endVal = 0;
        }
        
        trieNode(char ch):children(){
            chr = ch;
            endVal = 0;
        }

        unordered_map<char, trieNode> getChildren(){
            return children;    
        }

        void setEndVal(int endVal){
            endVal = endVal;
        }

        int getEndVal(){
            return endVal;
        }

        bool isEnd(){
            return (endVal != 0);    
        }

        char getValue(){
            return chr;    
        }
    private:
        char chr;
        int endVal;
        unordered_map<char, trieNode> children;

};

class Trie{
    public:

        void insert(string word, int val){
            int len = word.length();
            trieNode iter = root;
            for (int level=0; level<len; level++){
                unordered_map<char, trieNode> child = iter.getChildren();

                char ch = word.at(level);
                unordered_map<char, trieNode>::iterator it;// = child.find(ch);
                it = child.find(ch);
                if(it == child.end()){
                    trieNode temp(ch);
                    cout << ch << " " << temp.getValue() << endl;
                    child.insert(make_pair(ch, temp));
                    iter = temp;
                }
                else{
                    iter = it->second;}
            }
            iter.setEndVal(val);
        }

        void print(){
            trieNode iter = root;
          //  while(iter.getValue() == 'd'){
                cout << root.getValue();
                unordered_map<char, trieNode> child = root.getChildren();
                unordered_map<char, trieNode>::iterator it;
                it = child.begin();
                iter = it->first;
          //  }
        }

        void calculateVal(string input){
//            int len = input.length();
            int nextPos = 0;
            int val;
//            while(nextPos != len){
                string str = input.substr(nextPos);
                val = longestPrefix(str);
                //cout << "Value " << val << endl;
        }

        int longestPrefix(string str){
            int value = 0, prevMatch = 0;
            string res = "";
            int len = str.length();
            trieNode iter = root;
            for(int level=0; level<len; level++){
                unordered_map<char, trieNode> child = iter.getChildren();

                char ch = str[level];
                unordered_map<char, trieNode>::iterator it = child.find(ch);
                if(it == child.end()) break;
                else{
                    cout << it->first << endl;
                    iter = it->second;
                    if(iter.isEnd()){
                        res += it->first;
                        prevMatch = level + 1;
                        value = iter.getEndVal();
                    }
                }
            }
            cout << res << endl;
            return value;
        }

    private:
        trieNode root;
};
