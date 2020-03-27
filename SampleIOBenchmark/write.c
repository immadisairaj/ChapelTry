#include <stdio.h>
#include <time.h>

int main() {
    int num = 1000000000;
    clock_t start, end;
    FILE *filePointer = fopen("writec", "w");
    int d = 1;
    start = clock();
    for(int i=1; i<=num; i++)
    	fprintf(filePointer, "%d\n", d);
    //fflush(filePointer);
    fclose(filePointer);
    end = clock();
    //fclose(filePointer);
    float time = (float) (end-start)/CLOCKS_PER_SEC;
    printf("Time writing %d into file: %f\n", num, time);
}
