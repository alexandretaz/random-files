program proce;
uses crt;
procedure escreva(c,l:integer;msg:string);
begin
	gotoxy(c,l);
	write(msg);
end;

begin
	clrscr;
	writeln('uha');
	escreva(20,10,'aiaiai');
	readkey;
end.
