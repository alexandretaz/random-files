#include <stdlib.h>
#include <stdio.h>

main() { 
	FILE *fp;
	int num[1000],i;
	char arq[50];
	
	/* 
 		int c , i;
		char s[80];

		while((c = getchar()) != 10) {
			s[i] = c ;
			i++ ;
	*/
	
	printf("\n Entre com o nome do arquivo : ");
	fflush(stdin);
	gets(arq);
	/* scanf("%s",arq); */

	if( (fp = fopen(arq,"r")) == NULL ){
		printf("\n File no found Bitch ! %s ", arq);
		exit(1);
	}

	i=0;

	while (fscanf(fp, "%d", &num[i]) != -1){
		printf("%d" , num[i]);
		i++;
	}
	fclose(fp);

	printf("\n Eba li %d numeros do arquivo %s \n",i ,arq);
}
