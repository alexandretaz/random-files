program func1c;
uses crt;
var n:integer;
function PROX_IMPAR(n:integer):integer;
begin
	if ( n mod 2 = 0 ) then
	begin
		PROX_IMPAR:=n+1;
	end
	else
	begin
		PROX_IMPAR:=n+2;
	end;
end;
begin
	write('Entre com um num : ');
	read(n);
	write(PROX_IMPAR(n));
	readkey;
end.
