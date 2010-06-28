program exercicio1;
uses crt;
var idade, entrada, contador:integer;
begin
	clrscr;
{ Inicializando as variaveis}
	idade:=0;
	entrada:=0;
	contador:=-1;
	writeln('O programa calcula a media de idade de N entradas inteiras maiores que 0');
	writeln('');
	repeat
		writeln('Entre com idade : ');
		readln(entrada);
		if entrada < 0 then
			begin
				writeln('A idade deve ser um número inteiro maior que 0')
			end
		else
			begin
				contador:=contador+1;
				idade:=idade+entrada
			end
	until (entrada = 0);
	writeln(contador,' idades foram computadas e a média de idades foi ',idade/contador:5:2);
	readkey;
end.
