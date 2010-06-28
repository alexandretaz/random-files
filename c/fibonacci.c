#include <stdio.h>
main(){
	int i;
	int a;
	int b;
	int n;
	a=0;
	n=1;
	printf("\n Os 50 da serie fibonacci: ");
	for (i=0;i<50;i++){
		printf("%d ",a);
		b=n;
		n=n+a;
		a=b;
	}
}
