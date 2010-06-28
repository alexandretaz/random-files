#include<stdio.h>

int main()
{
int numero,i;
printf("digite um numero primo:");
scanf("%d",&numero);
i=2;
while (numero!=i)
{
	if(numero%i==0)
	{
printf("nao e primo");
return 0;
	}
	i++;
}
printf("é primo");
}
