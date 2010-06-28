program func1d;
uses crt;
var n1,n2:real;
function MAIOR_2N(n1,n2:real):real;
begin
	if ( n1 > n2) then
	begin
		MAIOR_2N:=n1;
	end
	else
	begin
		MAIOR_2N:=n2;
	end;
end;
begin
	write('Entre com 2 nums : ');
	read(n1,n2);
	write(MAIOR_2N(n1,n2));
	readkey;
end. 
