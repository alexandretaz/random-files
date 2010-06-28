program proced2b;
uses crt;
procedure RISCO(qtd_riscos,linha:integer);
var i:integer;
begin

	for i:=1 to qtd_riscos do
	begin
		gotoxy(i, linha);
		write('-');
	end;
end;
var msg:string;
var qtd_riscos,linha:integer;
begin
	write('num de riscos e linha : ');
	read(qtd_riscos,linha);
	clrscr;
	RISCO(qtd_riscos,linha);
	readkey;
end.
