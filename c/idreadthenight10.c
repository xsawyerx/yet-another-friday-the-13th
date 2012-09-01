#include <stdio.h>
#include <time.h>

#define YEAR_ITR 5
#define MONT_ITR 12

int main(int argc, char *argv[])
{
        time_t raw_time;
        struct tm *p;
        int y = 0, m = 0;

        time(&raw_time);
        p = gmtime(&raw_time);
        p->tm_isdst = -1;
        p->tm_mday = 13;

        for (y = 0; y < YEAR_ITR; y++){
                p->tm_year += y;
                for (m = 0; m < MONT_ITR; m++){
                        p->tm_mon = m;
                        if (mktime(p) == -1){
                                printf("Error getting time\n");
                                break;
                        }
                        if (p->tm_wday == 5)
                                printf("%s\n", asctime(p));
                }
        }

        return 0;
}