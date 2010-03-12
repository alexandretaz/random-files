#include <stdio.h>


main () {
	int bin,i,count,multi;
	multi=1;
	count=1;
	printf("entre com o binario: ");
	scanf("%d",&bin);
	while(bin/multi != 1){
		multi=multi*10;
		count++;
	} 
	printf("%d", count);
	for (i=count;i>=0;i--){
		printf("%d ",i);
}


}
