/*
    original version:
    https://github.com/doremi/friday/blob/master/friday.c
*/

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

int leap(int year)
{
    if ((year % 400) == 0)
        return 1;
    else if ((year % 100) == 0)
        return 0;
    else if ((year % 4) == 0)
        return 1;
    else
        return 0;
}

int main(int argc, char **argv)
{
    int i, count;
    int year, mon, day, wday;
    int friday = 0, total = 0;
    struct tm *tm;
    time_t t = time(NULL);
    int days[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    int sum[31][7];
    int max = 0, min = INT_MAX;

    if (argc != 2) {
        printf("Usage: %s count\n", argv[0]);
        exit(1);
    }

    memset(&sum, 0, sizeof(sum));
    count = atoi(argv[1]);
    tm = localtime(&t);
    year = tm->tm_year + 1900;
    mon = tm->tm_mon;
    day = tm->tm_mday;
    wday = tm->tm_wday;

    printf("Today: %d/%d/%d - %d, count: %d\n", year, mon+1, day, wday, count);

    for (i = 0; i < count; ++i) {
// printf("Today: %d/%d/%d - %d, count: %d\n", year, mon+1, day, wday, count);
        if (day == 13 && wday == 5) {
            printf("13th Friday: %d/%02d/%02d, %d\n", year, mon+1, day, wday);
            ++friday;
        }
        ++day,++wday;
        if (wday == 8)
            wday = 1;
        if (mon == 11 && day == 32) {
            ++year;
            mon = 0;
            day = 1;
            days[1] = (leap(year) == 1 ? 29 : 28);
        }
        if (day > days[mon]) {
            day = 1;
            ++mon;
        }
        ++total;
        ++sum[day-1][wday-1];
    }


    printf("Yes: %d, No: %d, Ratio: %f%%\n", friday, (total - friday), (double)(friday/1.0/total*100.0));
    printf(" Mon Tue Wed Thu Fri Sat Sun\n");
    for (i = 0; i < 31; ++i) {
        int j;
        printf("%02d ", i+1);
        for (j = 0; j < 7; ++j) {
            printf("%04d ", sum[i][j]);
            if (sum[i][j] > max)
                max = sum[i][j];
            if (min > sum[i][j])
                min = sum[i][j];
        }
        printf("\n");
    }
    printf("Max: %d, Min: %d\n", max, min);
    return 0;
}

