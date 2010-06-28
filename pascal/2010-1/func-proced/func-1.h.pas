program func1h;
uses crt;
var n1:real;
function DOBRO(n1:real):real;
begin
	DOBRO:=n1*2;
end;
begin
	write('Entre com 1 num : ');
	read(n1);
	write(DOBRO(n1));
	readkey;
end. 
