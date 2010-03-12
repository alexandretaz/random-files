program proced2f;
uses crt;
procedure ESCREVA(linha,coluna,mensagem:integer);
begin
	clrscr;
	gotoxy(linha,coluna);
	write(mensagem);
end;
var mensagem,linha,coluna:integer;
begin
	write('Linha ? Coluna ? Mensagem ? ');
	read(linha,coluna,mensagem);
	clrscr;
	ESCREVA(linha,coluna,mensagem);

end.
