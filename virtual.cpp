#include <iostream> 
using namespace std;
 
class Shape {
   private:
      int width, height;
      Shape(const Shape&);
      Shape& operator=(const Shape&);

   public:
      Shape( int a = 0, int b =0){
         width = a;
         height = b;
      }

      int getWidth(){
          return width;
      }

      int getHeight(){
          return height;
      }

      virtual int area()
      {
         cout << "Parent class area :" <<endl;
         return 0;
      }

      friend ostream &operator<<( ostream &output, const Shape &D ) {
         output << "Width : " << D.width << " Height : " << D.height;
         return output;
      }
};
class Rectangle: public Shape {
   public:
    int height,width;
      Rectangle( int a = 0, int b = 0):Shape(a, b) { 
         // height = b;
          //width = a; 
          }
      
      int area () {
         cout << "Rectangle class area :" <<endl;
         return (getWidth() * getHeight()); 
      }/*
      friend ostream &operator<<( ostream &output, const Rectangle &D ) {
         output << "Width : " << D.width << " Height : " << D.height;
         return output;
      }*/
};

class Triangle: public Shape {
   public:
      Triangle( int a = 0, int b = 0):Shape(a, b) { }
      
      int area () { 
         cout << "Triangle class area :" <<endl;
         return (getWidth() * getHeight() / 2); 
      }
};

int main() {
   Shape *shape;
   Rectangle rec(10,7);
   Triangle  tri(10,5);

   shape = &rec;

   cout << rec.area() <<endl;
   shape->area();

   cout << *shape << endl;
   shape = &tri;
   
   shape->area();
   
   return 0;
}
