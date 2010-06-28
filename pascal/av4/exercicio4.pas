program exercicio4;
uses crt;
	var i,entrada,faixa25,faixa50,faixa75,faixa100:integer;
begin
	clrscr;
	faixa25:=0;
	faixa50:=0;
	faixa75:=0;
	faixa100:=0;
	writeln('');
	for i:=1 to 30 do
	begin
		writeln('Entre com o numero');
		readln(entrada);
		case entrada of
			0..25 : faixa25:=faixa25+1;
			26..50: faixa50:=faixa50+1;
			51..75: faixa75:=faixa75+1;
			76..100: faixa100:=faixa100+1;
		end;	
	end;
	writeln('');
	writeln('Quantidade de numeros nas faixas correspondentes :');
	writeln('[ 0 a  25] ',faixa25);
	writeln('[26 a  50] ',faixa50);
	writeln('[51 a  75] ',faixa75);
	writeln('[76 a 100] ',faixa100);
	readkey;
end.
