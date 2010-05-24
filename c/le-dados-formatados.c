#include<stdlib.h>
#include<stdio.h>

int main() {
	FILE *f;
	char nome[31];
	float nota;
	
	if (( f=fopen("/tmp/exemplo3.txt","r")) == NULL ){
		printf("boom \n");
		exit(1);
	}
	while(fscanf(f,"%s %f",nome,&nota)!=EOF)
		printf("%s %2f\n",nome,nota);
	fclose(f);
	return 0;
}
