program exercicio3;
uses crt;
	var i,j:integer;
begin
	clrscr;
	writeln('');
	for i:=100 to 1000 do
	begin
		for j:=2 to i-1 do
			begin 
				if (i mod j) = 0 then
				begin
						Break;
				end;

			end;
		if j=(i-1) then	
			writeln(i);
	end;
	readkey;
end.
