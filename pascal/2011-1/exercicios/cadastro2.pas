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

