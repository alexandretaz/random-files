program func1i;
uses crt;
var n1:integer;
function FATORIAL(n1:integer):integer;
var tmp,i:integer;
begin
	tmp:=1;
	for i:=1 to n1 do
	begin
		tmp:=tmp*i;
	end;
	FATORIAL:=tmp;
end;
begin
	write('Entre com 1 num : ');
	read(n1);
	write(FATORIAL(n1));
	readkey;
end. 
