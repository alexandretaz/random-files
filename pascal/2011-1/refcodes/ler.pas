procedure carregar;
begin
    assign(arq, 'alunos.dat');
    if testar(arq) = true then
    begin
        while eof(arq) = false do
        begin
            read(arq, a);
            inserir(a);
        end;
    end;
end;
