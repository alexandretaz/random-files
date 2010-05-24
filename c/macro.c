#include<stdio.h>
#define PRN(n) printf("%.2f\n",n)
#define soma(x,y) x + y
#define ABS(n) (n>0)?n:-n

int main(){
	float n1;
	n1=3.13;
	PRN(n1);
	printf("%d \n",5*(soma(2,3)));
	printf("%d \n",ABS(-10));
	printf("%d \n",ABS(5));
	return 0;
}
