#include<stdio.h>
#include<stdlib.h>

main(){

	FILE *fp;

	float base, result;
	int exp,i;
	char arq[50];

	printf("\n Entre com nome do arquivo: ");
	fflush(stdin);
	gets(arq);

	if (( fp= fopen(arq,"r")) == NULL ) {
		printf("\n Nao pode abrir %s \n",arq);
		exit(1);
	}

	while(fscanf(fp,"%f %d",&base,&exp) != -1){
		result = 1;
		if (exp > 0 )
			for (i=0;i< exp; i++)
				result = result * base;
		else
			for (i=0;i<exp*-1;i++)
				result = result * 1/base;

		printf("\n %2f elevado a %d = %2f\n" , base , exp, result);
	}
	fclose(fp);
}
