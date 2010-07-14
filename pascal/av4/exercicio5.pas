program exercicio5;
uses crt;
	var ano:integer;
		popA,popB:real;
begin
	clrscr;
	{ Inicializando as variaveis}
	popA:=90000;
	popB:=200000;
	ano:=0;
	writeln('O programa calcula o tempo nacessário para que o país A ( 90000 habitantes, com crescimento anual de 3,1% )ultrapasse o país B ( 200000 habitantes e crescimento anual de 1,5% )');
	writeln('');
	
	while popA <= popB do
	begin
		writeln(ano,popA:10:2,popB:10:2);
		popA:=popA+popA*0.031;
		popB:=popB+popB*0.015;
		ano:=ano+1;
	end;
		writeln('Serao necessarios  ',ano,' anos para que o Pais A, ultrapasse o Pais B em numero de habitantes');
	readkey;
end.
