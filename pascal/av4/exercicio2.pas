program exercicio2;
uses crt;
	var i,contador,homens, mulheres:integer;
		alturaMulher,alturaHomem,entrada:real;
		sexo:char;
begin
	clrscr;
	{ Inicializando as variaveis}
	entrada:=0;
	homens:=0;
	alturaHomem:=0;
	alturaMulher:=0;
	mulheres:=0;
	contador:=-1;
	writeln('O programa calcula as medias de alturas dos sexos masculinos e femininos, mostra tambem as maiores alturas e as menores e o numero de homens e mulheres');
	writeln('');
	for i:=1 to 20 do
	begin
		writeln('Entre com o sexo ([f]eminino , [m]asculino): ');
		readln(sexo);
		writeln('Entre com a altura ( exemplo: 1.85 ): ');
		readln(entrada);			
		case sexo of
			'f' : 
			begin
				mulheres:=mulheres+1; 
				alturaMulher:=alturaMulher+entrada;
			end;
			'm' : 
			begin
				homens:=homens+1;	
				alturaHomem:=alturaHomem+entrada;
			end
			
		else
			writeln('Entre com [m] para sexo masculino e [f] para feminino');
		end;
	end;
			writeln('Foram computados ',homens,' homens e ',mulheres,' mulheres');
			writeln('A altura media dos homens e: ',alturaHomem/homens:3:2,' , ja a altura media das mulheres e: ',alturaMulher/mulheres:3:2);
			writeln('A altura media geral e :',(alturaMulher+alturaHomem)/(homens+mulheres):3:2);
			readkey;
end.
