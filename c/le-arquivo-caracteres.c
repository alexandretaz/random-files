#include<stdlib.h>
#include<stdio.h>

int main() {
	FILE *f;
	short int ch;
	if (( f=fopen("/tmp/exemplo.txt","r")) == NULL ){
		printf("boom \n");
		exit(1);
	}
	while((ch=fgetc(f))!=EOF)
		printf("%c",ch);
	printf("\n");
	fclose(f);
	return 0;
}
