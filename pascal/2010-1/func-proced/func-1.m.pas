program func1m;
uses crt;
var n1:integer;
function PROX_PRIMO(n1:integer):integer;
var i,count:integer;
var PRIMO:boolean;
begin
	PRIMO:=False;
	while PRIMO=False do
	begin
		count:=0;
		n1:=n1+1;
		for i:=1 to n1 do
		begin
	
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
	PROX_PRIMO:=n1;
end;
begin
	write('Entre com o num : ');
	read(n1);
	write(PROX_PRIMO(n1));
	readkey;
end. 
