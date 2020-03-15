#include <stdio.h>
#include <time.h>

int main() {
    int num = 10000000;
    char str[100];
    clock_t start, end;
    FILE *filePointer = fopen("read.txt", "r");
    start = clock();
    while(fgets(str, sizeof(str), filePointer)!=NULL) {
        // printf("%s",str);
    }
    fclose(filePointer);
    end = clock();
    float time = (float) (end-start)/CLOCKS_PER_SEC;
    printf("Time reading %d into file: %f\n", num, time);
}