program par;
uses crt;
var n:integer;
begin
	clrscr;
	writeln('entre com um número inteiro');
	readln(n);
	if (n > 0) then 
		writeln('número positivo')
	else
		if (n<0)  then 
			writeln('número negativo')
		else
			writeln('número neutro')
end.
