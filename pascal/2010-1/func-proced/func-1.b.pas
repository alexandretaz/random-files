program func1b;
uses crt;
var n:integer;
function PROX_NUM(n:integer):integer;
begin
	PROX_NUM:=n+1;
end;
begin
	write('Entre com 1 num : ');
	read(n);
	write(PROX_NUM(n));
	readkey;
end.
