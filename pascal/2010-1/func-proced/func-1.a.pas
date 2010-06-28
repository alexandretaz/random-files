program func1a;
uses crt;
var n1,n2,n3:real;
function MEDIA(n1,n2,n3:real):real;
begin
	MEDIA:= (n1 + n2 + n3)/3;
end;
begin
	write('Entre com 3 nums : ');
	read(n1,n2,n3);
	write(MEDIA(n1,n2,n3));
	readkey;
end.
