program proced2c;
uses crt;
procedure APAGA;
var i,j:integer;
begin
	for i:=1 to 25  do
	begin
		for j:=1 to 80 do
			begin
				gotoxy(j,i);
				write(' ');
			end;
	end;
end;
begin
	APAGA;
	readkey;
end.
