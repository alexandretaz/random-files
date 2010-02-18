program conversao;
uses crt;
var pol,cm:real;
const fixo=2.54;
begin
	clrscr;
	writeln('Entre com as polegadas: ');
	readln(pol);
	cm:=pol*fixo;
	writeln(' O valor em cm eh : ' ,cm,'cm');
        readkey;
end.
