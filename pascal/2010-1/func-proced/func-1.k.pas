program func1k;
uses crt;
var n1:integer;
function IMPAR(n1:integer):boolean;
begin
	if ( n1 mod 2 = 0) then
		IMPAR:=False
	else
		IMPAR:=True;
end;
begin
	write('Entre com o num : ');
	read(n1);
	write(IMPAR(n1));
	readkey;
end. 
