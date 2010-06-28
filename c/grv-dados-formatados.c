#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(){
	FILE *f;
	char nome[31];
	float nota;
	f = fopen("/tmp/exemplo3.txt","w");
	while(1){
		printf("digite nome e nota");
		scanf("%s %f",nome,&nota);
		if(strlen(nome)<=1) break;
		fprintf(f,"%s %2f\n",nome,nota);
	}
	fclose(f);
	return 0;
}
