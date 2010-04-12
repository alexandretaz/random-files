#include<stdio.h>
#include<string.h> // strcat
//#include<ctype.h>  // strieql 
int strieql(char *str1, char *str2)
{
	while ((toupper(*str1) == toupper(*str2)) && (*str1))
	{
		str1++;
		str2++;
	}

	return((*str1 == NULL) && (*str2 == NULL));
}


int main(void){
	char *A[123];
	char B[]="Henrique";
	char *C[256];

	*A ="Fernandod";
//	*B = "Henrique";
	*C = "abcdef";
	*C = *A;
	strcat(B," S ");	
	printf("Testando %d \n",strieql("ABC","ABC"));
	printf("%s \n", *C);

	return 0;
}

