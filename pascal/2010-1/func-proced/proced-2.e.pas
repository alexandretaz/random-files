program proced2e;
uses crt;
procedure SAUDACAO(hora:integer);
begin
	if hora < 11 then
		write('Bom dia');
	if (hora >= 11) and( hora < 18) then
		write('Boa tarde');
	if (hora >= 18) and (hora <= 23) then
		write('Boa noite');
end;
var hora:integer;
begin
	write('Entre a hora ');
	read(hora);
	SAUDACAO(hora);
	readkey;
end.
