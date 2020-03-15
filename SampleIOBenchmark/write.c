#include <stdio.h>
#include <time.h>

int main() {
    int num = 10000000;
    clock_t start, end;
    FILE *filePointer = fopen("writec", "w");
    start = clock();
    for(int i=1; i<=num; i++)
        fprintf(filePointer, "%d\n", i);
    fclose(filePointer);
    end = clock();
    float time = (float) (end-start)/CLOCKS_PER_SEC;
    printf("Time writing %d into file: %f\n", num, time);
}