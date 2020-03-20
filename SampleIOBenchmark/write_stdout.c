#include <stdio.h>
#include <time.h>

int main() {
	//setbuf(stdout, NULL);
    int num = 10000000;
    clock_t start, end;
    start = clock();
    for(int i=1; i<=num; i++)
    	printf("%d\n", i);
    end = clock();
    float time = (float) (end-start)/CLOCKS_PER_SEC;
    printf("Time writing %d into stdout: %f\n", num, time);
}
