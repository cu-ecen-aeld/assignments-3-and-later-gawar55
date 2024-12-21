#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>
#include <string.h>
#include <errno.h>

int main(int argc,char* argv[])
{   fprintf(stderr,"args %d",argc);
    if(argc < 3){
        fprintf(stderr, "Less Args, exit 1 %d", argc);
		syslog(LOG_ERR, "Less Arguments, exit 1");
		return 1;
    }
    FILE* file;
    file = fopen(argv[1],"w");
    syslog(LOG_DEBUG,"Writing %s to %s",argv[2],argv[1]);
    int x = fprintf(file, "%s", argv[2]);
    if(x <= 0){
        syslog(LOG_ERR,"File is empty");
    } 
    fclose(file);
    return 0;
}