program proced2a;
uses crt;
procedure CENTRO(msg:string);
begin
	gotoxy(40 - (Length(msg) div 2), 12);
	write(msg);
end;
var msg:string;
begin
	write('Mensagem ?');
	read(msg);
	clrscr;
	CENTRO(msg);

end.
