program fatorial;

var res:real;
var n:real;

begin
	writeln('entre com n : ');
	readln(n);
	res:=n;
	while(n>1) do
		begin
			res:=res*(n - 1);
			n:=n-1;
			writeln(res);
		end;
	writeln('r: ',res:20:3);
end.


