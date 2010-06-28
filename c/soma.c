#include <stdio.h>
main(){
	int i;
	int n;
	int soma=0;
	printf("\n Os 50 da serie: ");
	for (i=0;i<50;i++){
		n=2*i+1;
		soma=soma+n;
	}
	printf("%d ",soma);
}
