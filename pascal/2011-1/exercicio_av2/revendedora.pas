program revendedora;
uses crt;
type
    bloco =^no;
    aluno = record
        nome: string;
        av1, av2:real;
end;

    no = record
        info: aluno;
        prox: bloco;
    end;
    arquivo = file of aluno;

var inicio, fim, aux: bloco;
    arq:arquivo;
    a:aluno;

    comando: integer;

procedure mostrar_menu;
begin
    clrscr;
    writeln('Revendedora');
    writeln();
    writeln('1 - Cadastrar novo carro');
    writeln('2 - Pesquisar carro');
    writeln('3 - Alterar cadastro de carro');
    writeln('4 - Excluir carro');
    writeln('5 - Listar carros');
    writeln('6 - Finalizar o sistema');
    writeln();
    writeln('Entre com valor: ');

end;
begin
    comando := 0;
    while (comando <> 6) do
    begin
        mostrar_menu;
        read(comando);
    end;
end.
