#define _POSIX_C_SOURCE 200809L

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  if (argc != 2) {
    fprintf(stderr, "%s: only one argument needed\n", *argv);
    return 1;
  }

  char *maxstr = NULL;
  char *currstr = NULL;
  FILE *outfp = NULL;
  FILE *maxfp = NULL;
  int perc = atoi(argv[1]);
  int maxbrt = 0;
  int incbrt = 0;
  int currbrt = 0;
  int newbrt = 0;

  if (perc > 100 || perc < -100) {
    fprintf(stderr, "Invalid value: %s\nAcceptable values are 0-100\n",
            argv[1]);
  }

  if ((maxfp = fopen("/sys/class/backlight/intel_backlight/max_brightness",
                     "r")) == NULL) {
    perror("Could not open /sys/class/backlight/intel_backlight/max_brightness "
           "for reading");
    fclose(maxfp);
  }
  if ((outfp = fopen("/sys/class/backlight/intel_backlight/brightness",
                     "r+")) == NULL) {
    perror("Could not open /sys/class/backlight/intel_backlight/brightness for "
           "readng and writing");
    fclose(outfp);
  }

  size_t n = 0;
  if (getline(&maxstr, &n, maxfp) == -1) {
    perror("Could not read from "
           "/sys/class/backlight/intel_backlight/max_brightness");
    fclose(maxfp);
  }
  if (getline(&currstr, &n, outfp) == -1) {
    perror("Could not read from "
           "/sys/class/backlight/intel_backlight/brightness");
    fclose(outfp);
  }

  maxbrt = atoi(maxstr);
  currbrt = atoi(currstr);
  incbrt = (perc * maxbrt) / 100;
  newbrt = currbrt + incbrt;
  if (newbrt >= maxbrt) {
    newbrt = maxbrt;
  }

  if (newbrt < 5) {
    newbrt = 5;
  }

  if (fprintf(outfp, "%d\n", newbrt) < 0) {
    perror(
        "Could not write to /sys/class/backlight/intel_backlight/brightness");
    fclose(outfp);
  }

  fclose(maxfp);
  fclose(outfp);
  return EXIT_SUCCESS;
}
