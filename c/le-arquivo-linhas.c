#include<stdlib.h>
#include<stdio.h>

int main() {
	FILE *f;
	char str[81];
	if (( f=fopen("/tmp/exemplo.txt","r")) == NULL ){
		printf("boom \n");
		exit(1);
	}
	while(fgets(str,80,f)!=NULL)
		printf("%s",str);
	printf("\n");
	fclose(f);
	return 0;
}
