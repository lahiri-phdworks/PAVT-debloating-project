#include <stdio.h>

void run(int a) {
  if (a > 90) {
    printf("%d\n", a);
  }
}

long long int add(int a, int b) { return a + b; }

long long int sub(int a, int b) { return a - b; }

int main(int argc, char *argv[]) {
  int c = 0;
  c = -500;
  if (c > 0) {
    run(c);
    add(c, c + 1);
  } else {
    sub(c + 90, c);
  }
  return 0;
}