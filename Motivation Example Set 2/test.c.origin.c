#include <stdio.h>
#include <stdlib.h>

void process_aflag(int a) { printf("%d\n", a + 90); }

void process_bflag(int a) {
  a = 80 * a;
  process_aflag(a);
}

void process_cflag(int a) {
  a = a << 20;
  process_aflag(a);
  process_bflag(a);
}

// http://osr507doc.sco.com/en/tools/ccs_stdio_args.html

int main(int argc, char *argv[]) {
  /* Function flags */
  int aflag = 0;
  int bflag = 0;
  int cflag = 0;
  int ch;

  while ((ch = getopt(argc, argv, "abc")) != -1) {
    /* For options present, set flag to 1.              */
    /* If unknown options present, print error message. */

    switch (ch) {
    case 'a':
      aflag = 10;
      fprintf(stdout, "aflag set !\n");
      process_aflag(aflag);
      break;
    case 'b':
      bflag = 20;
      fprintf(stdout, "bflag set !\n");
      process_bflag(bflag);
      break;
    case 'c':
      cflag = 30;
      fprintf(stdout, "cflag set !\n");
      process_cflag(cflag);
      break;
    default:
      (void)fprintf(stderr, "Usage: %s [-abc]\n", argv[0]);
      return (2);
    }
  }
  /* Do other processing controlled by oflag, pflag, rflag. */
  return (0);
}