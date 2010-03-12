program func1f;
uses crt;
var n1,n2,n3:real;
function MAIOR_3N(n1,n2,n3:real):real;
var maior:real;
begin
	if ( n1 > n2) then
	begin
		maior:=n1;
	end
	else
	begin
		maior:=n2;
	end;
	if (n3 > maior) then
	begin
		MAIOR_3N:=n3;
	end
	else
	begin
		MAIOR_3N:=maior;
	end;
end;
begin
	write('Entre com 3 nums : ');
	read(n1,n2,n3);
	write(MAIOR_3N(n1,n2,n3));
	readkey;
end. 
