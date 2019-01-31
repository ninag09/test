#include<unordered_map>
#include<string>
#include<iostream>

using namespace std;
class trieNode;
typedef unordered_map<char, trieNode*> map;

typedef struct Result{
    int pos;
    int value;
}result;

class trieNode{
    public:
        
        trieNode(char ch){
            children = new unordered_map<char, trieNode*>();
            chr = ch;
            endWord = false;
            endVal = 0;
        }

        map* getChildren(){
            return children;    
        }

        void setEndWord(bool end){
            endWord = end;
        }

        void setEndVal(int end){
            endVal = end;
        }

        int getEndVal(){
            return endVal;
        }

        bool isEnd(){
            return endWord;    
        }

        char getValue(){
            return chr;    
        }
    private:
        char chr;
        bool endWord;
        int endVal;
        map* children;
};

class Trie{
    public:
        Trie(){
            root = new trieNode('0');    
        }

        void insert(string word, int val){
            int len = word.length();
            trieNode* iter = root;
            for (int level=0; level<len; level++){
                map* child = iter->getChildren();

                char ch = word.at(level);
                map::iterator it;
                it = child->find(ch);
                if(it == child->end()){
                    trieNode* temp = new trieNode(ch);
                    child->insert(make_pair(ch, temp));
                    iter = temp;
                }
                else
                    iter = it->second;
            }
            iter->setEndWord(true);
            iter->setEndVal(val);
        }

        void calculateVal(string input){
            int len = input.length();
            int nextPos = 0;
            result val;
            int total = 0;
            for(int i=0; i<len; i++){
                string str = input.substr(nextPos);
                cout << str << endl;
                val = longestPrefix(str);
                nextPos += val.pos;
                total += val.value;
            }
            cout << "Value " << total << endl;
        }

        result longestPrefix(string str){
            result rslt; 
            int prevMatch = 0;
            string res = "";
            int len = str.length();
            trieNode* iter = root;
            for(int level=0; level<len; level++){
                map* child = iter->getChildren();

                char ch = str[level];
                map::iterator it = child->find(ch);
                if(it == child->end()){
                    rslt.pos = prevMatch + 1;
                    break;
                }
                else{
                    iter = it->second;
                    res += it->first;
                    if(iter->isEnd()){
                        prevMatch = level;
                        rslt.value = iter->getEndVal();
                        rslt.pos = prevMatch;
                    }
                }
            }
            return rslt;
        }

    private:
        trieNode* root;
};
