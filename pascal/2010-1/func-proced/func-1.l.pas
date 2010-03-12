program func1l;
uses crt;
var n1:integer;
function PRIMO(n1:integer):boolean;
var i,count:integer;
begin
	count:=0;
	for i:=1 to n1 do
	begin
		writeln(n1 , i , count);

		if count > 1 then
			PRIMO:=False
		else
			PRIMO:=True;

		if  ((n1 mod i) = 0) then
			begin
				if (n1 <> i ) then 
					begin
						count:=count+1;
					end;
			end;
	end;	

end;
begin
	write('Entre com o num : ');
	read(n1);
	write(PRIMO(n1));
	readkey;
end. 
