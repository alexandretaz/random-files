{  Crie um registro com os campos: chapa(I) , Nome (S), Salario (R) e desenvolva as seguintes subrotinas :

1 - Fazer um procedimento que permita ao usuário preencher o reg, preenche(r);
2 - Fazer um procedimento que exiba o conteudo do registro , exibe(r);
3 - Fazer um procedimento que atualize o salario do registro com X% de aumento , aumento(R,X);

exemplo de saida : 

chapa : 5
nome : jao
salario : 1000

chapa : 5
nome : jao
salario : 1000

Digite a porcentagem do aumento:  10

chapa : 5
nome : jao
salario : 1100

}
program salario
begin 
	preenche(r);
	exibe(r);
	write('digite a porcentagem do aumento : ');
	read(x);
	aumento(r,x);
	exibe(r);
end.
