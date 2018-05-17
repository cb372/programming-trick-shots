#include <stdio.h>

int popCount(int x) {
  int ones = 0;
  for (int i = 0; i < 32; i++) {
    if (x & 1) ones += 1;
    x = x >> 1;
  }
  return ones;
}

int main(void) {
  int x = 0b1000010100110100001001001;
  printf("%d", popCount(x));
}
