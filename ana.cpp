#include<iostream>
#define NO_OF_CHARS 256

using namespace std;
bool areAnagram(string str1, string str2)
{
    int count[NO_OF_CHARS] = {0};
    int i;
 
    for (i = 0; str1[i] && str2[i];  i++)
    {
        count[str1[i]]++;
        count[str2[i]]--;
    }
 
//    if (str1[i] || str2[i])
  //    return false;
 
    for (i = 0; i < NO_OF_CHARS; i++)
        if (count[i])
            return false;
     return true;
}

int main()
{
    if(areAnagram("aaca","aca"))
        cout << "Anagram" <<endl;
    else
        cout << "Not" << endl;
    return 0;
}
