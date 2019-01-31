#include <iostream>
#include <string>
#include <unordered_map>

int main ()
{
  std::unordered_map<char,int> mymap;
  mymap['a']=12;
  //mymap.insert(std::make_pair('a',12));
  mymap.insert(std::make_pair('b',14));
  mymap.insert(std::make_pair('c',13));

  std::unordered_map<char,int>::const_iterator got = mymap.find ('a');

  if ( got == mymap.end() )
    std::cout << "not found";
  else
    std::cout << got->first << " is " << got->second;

  std::cout << std::endl;

  return 0;
}
