#include<stdlib.h>
#include<stdio.h>


int main(){ 
	FILE *f;
	char ch;
	f=fopen("/tmp/exemplo.txt","w");
	fputs("linhas\n",f);
	fputs("linhas legais\n",f);

	fclose(f);
	return 0;
}
	
