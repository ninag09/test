//#define NDEBUG

#include <stdio.h>      /* printf */
#include <assert.h>     /* assert */

void print_number(int* myInt) {
  assert (myInt!=NULL);
  printf ("%d\n",*myInt);
}

int main ()
{
  int a=10;
  int * b = NULL;
  int * c = NULL;

  b=&a;
  c=b;

  print_number (&a);
  print_number (b);
  print_number (c);

  return 0;
}

