#include <stdio.h>

int popCount(unsigned int x) {
  x = x - ((x >> 1) & 0x55555555);
  x = (x & 0x33333333) + ((x >> 2) & 0x33333333);
  x = (x + (x >> 4)) & 0x0F0F0F0F;
  x = x + (x >> 8);
  x = x + (x >> 16);
  return x & 0x0000003F;
}

int main(void) {
  int x = 0b1000010100110100001001001;
  printf("%d", popCount(x));
}
