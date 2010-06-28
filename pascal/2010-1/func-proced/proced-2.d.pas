program proced2c;
uses crt;
procedure APAGA_PARTE(linha_inicial,linha_final:integer);
var i,j:integer;
begin
	for i:=linha_inicial to linha_final  do
	begin
		for j:=1 to 80 do
			begin
				gotoxy(j,i);
				write(' ');
			end;
	end;
end;
var linha_inicial,linha_final:integer;
begin
	write('Entre com linha inicial e final ');
	read(linha_inicial,linha_final);
	APAGA_PARTE(linha_inicial,linha_final);
	readkey;
end.
