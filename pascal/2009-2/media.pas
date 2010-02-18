program media1;

var med1:real;
var med2:real;
var final:real;
begin
	while true do
	begin
	writeln('Entre com a med1 :' );
	readln(med1);
	writeln('Entre com a med2 :' );
	readln(med2);

	final:=(med1+med2)/2;

		if (final< 6) then
			writeln('reprovado')
		else
			writeln('aprovado');
		
	end;
end.	
	

