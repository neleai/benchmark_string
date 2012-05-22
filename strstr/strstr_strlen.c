#include <stdlib.h>
#include <stdio.h>
char *strstr2(char *s,char *n){char *p= s+strlen(s)-strlen(n); return p>s ? p : NULL;}
