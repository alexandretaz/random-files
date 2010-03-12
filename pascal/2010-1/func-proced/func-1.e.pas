program func1e;
uses crt;
var n1,n2:real;
function AREA_QUADRADO(n1,n2:real):real;
begin
	AREA_QUADRADO:=n1*n2;
end;
begin
	write('Entre com 2 nums : ');
	read(n1,n2);
	write(AREA_QUADRADO(n1,n2));
	readkey;
end. 
