#include <stdio.h>

int sad = 1; //Set if you are sad. Zero if not (C does not support Boolean :( )

char vodka[] = "Vodka\n";

int main() {
  if(sad) {
    drink(vodka);
  }
  return 0;
}

int drink(char str[]) {
  printf(str);
  return 0;
}
