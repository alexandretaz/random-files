program exemplo1;

uses crt; 

var preco_unit, preco_total: real;
	quant : integer;

begin
	clrscr;
	writeln('digite o preço unitário');
	readln(preco_unit);
	writeln('digite a quantidade: ');
	readln(quant);
	preco_total:= preco_unit * quant;
	writeln('O preço é: ', preco_total);
	readkey;
end.
