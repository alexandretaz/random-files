program proced2f;
uses crt;
procedure ESCREVA(linha:integer;coluna:integer;mensagem:string);
begin
	clrscr;
	gotoxy(linha,coluna);
	write(mensagem);
end;
var linha,coluna:integer;
var mensagem:string;
begin
	clrscr;
	write('Mensagem ? ');
	read(mensagem);
	write('Linha ? Coluna ?');
	read(linha,coluna);
	ESCREVA(linha,coluna,mensagem);
	readkey;
end.
