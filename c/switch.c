#include<stdio.h>

int main(){
	char c = 0 ; 
	scanf("%c",&c);
	switch(c){
		case 'y': printf("Sim \n");
			  break;
		case 'n': printf("Nao \n");
			  break;
		default: printf("What ever \n");
	}
	return 0;
}
