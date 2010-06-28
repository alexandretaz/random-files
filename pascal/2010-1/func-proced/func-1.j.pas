program func1j;
uses crt;
var n1,n2:integer;
function POTENCIA(n1,n2:integer):integer;
var tmp,i:integer;
begin
	tmp:=1;
	for i:=1 to n2 do
	begin
		tmp:=tmp*n1;
	end;
	POTENCIA:=tmp;
end;
begin
	write('Entre com 2 num : ');
	read(n1,n2);
	write(POTENCIA(n1,n2));
	readkey;
end. 
