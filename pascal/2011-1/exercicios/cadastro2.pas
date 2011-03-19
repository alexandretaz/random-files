program cadastro;
uses crt;
type
        aluno = record
                nome: string;
                av1, av2 : real;
        end;

var
        arquivo : file of aluno;
        a : aluno;
        op : integer;

{------- gera o menu no video ---------}
procedure menu;
begin
        clrscr;
        writeln('Escolha uma operacao:');
        writeln('1. Cadastrar aluno');
        writeln('2. Imprimir alunos');
        writeln('3. Finalizar');
        writeln;
        readln(op);
end;

{-------- abrirarquivo ---------------}
procedure abrirArquivo;
begin
	assign(arquivo, 'aluno.dat'); {$I-}
	reset(arquivo); {$I+}
	if ioresult=0 then
		seek(arquivo, 0) {filesize(arquivo))}
	else
		rewrite(arquivo);
end;


{------- cadastro --------------------}
procedure cadastrar;
begin
	clrscr;
	abrirArquivo;
	with a do
	begin
		write('nome do aluno: ');
		readln(nome);
		write('av1: ');
		readln(av2);
		write('av2: ');
		readln(av2);
	end;
	write(arquivo, a);
	write('registro gravadov!');
	close(arquivo);
end;
{------- imprimir --------------------}
procedure imprimir;
begin
	clrscr;
	abrirArquivo;
	while not eof(arquivo) do
	begin
		read(arquivo, a);
		writeln(a.nome, ' ', a.av1:2:2, ' ',a.av2:2:2 );
	end;
	close(arquivo);
end;

{---------- programa principal ---------}
begin
        repeat
                menu();
                if (op < 1) or (op > 3) then
                        writeln('Operacao invalida!!')
                else
                begin
			case op of
                        1 : cadastrar;
                        2 : imprimir;
                        end;
                end;
                writeln('Pressione qualquer tecla para continuar ...');
                readkey;

        until op = 3;
end.

