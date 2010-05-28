#include<stdio.h>
#include<stdlib.h>
int main(){
	FILE *f;
	double d= 12.23;
	int k = 101;
	long l=123023L;
	if ((f= fopen("exemplo1", "wb+")) == NULL ){
		printf("Erro\n");
		exit(1);
	}
	fwrite(&d,sizeof(double),1,f);
	fwrite(&k,sizeof(int),1,f);
	fwrite(&l,sizeof(long),1,f);
	rewind(f);
	
	fread(&d,sizeof(double),1,f);
	fread(&k,sizeof(int),1,f);
	fread(&l,sizeof(long),1,f);
	
	printf("%f %d %d",d,k,l);
	
	fclose(f);
	
	return 0;
}
