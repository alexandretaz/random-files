program modelos;
var altura,maior1,maior2:real;
    ide,nummaior1,nummaior2:integer;

begin
	ide:=1;
	maior1:=0;
	maior2:=0;
	nummaior1:=0;
	nummaior2:=0;
	while ide <>0 do 
	begin
		writeln('entre com a identificacao');
		readln(ide);
		writeln('entre com a altura');
		readln(altura);
		
		if altura > maior1 then
			maior1:=altura;
		
		
		if (altura > maior2 ) and (altura <= maior1) then
			maior2:=altura;



	writeln(' altura ',altura,' maior1 ',maior1,' maior 2 ',maior2);
	end;
	writeln('maior 1 ',maior1,' maior 2 ',maior2);
end.
		

	

