program func1g;
uses crt;
var n1:integer;
function CUBO(n1:integer):integer;
begin
	CUBO:=n1*n1*n1;
end;
begin
	write('Entre com 1 num : ');
	read(n1);
	write(CUBO(n1));
	readkey;
end. 
