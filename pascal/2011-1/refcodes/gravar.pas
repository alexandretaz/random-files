procedure gravar;
begin
        assign(arq, 'alunos.dat');
        rewrite(arq);
        aux: inicio;
        while aux <> nil do
        begin
            write(arq, aux^.info);
            aux := aux^.prox;
        end;
end;
