program calculadora;
var x,y:real;
var op:char;
begin
	writeln('Entre com o primeiro valor');
	readln(x);
	writeln('Entre com o segundo valor');
	readln(y);
	writeln('Entre com a operacao');
	readln(op);
	if ( op='+' )then
		writeln(x+y);
	if (op='-' ) then
		writeln(x-y);
	if (op='*')then
		writeln(x*y);
	if (op='/')then
		writeln(x/y);

end.
