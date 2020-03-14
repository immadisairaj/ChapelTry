#include <stdio.h>

int main() {
    FILE *filePointer;
    filePointer = fopen("input1", "w");
    fputc(17, filePointer);
    fclose(filePointer);
}