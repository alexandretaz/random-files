procedure imprimir;
var media: real;

    begin
        aux: inicio;
        while aux <> nil do
        begin
            media := (aux^.info.av1 + aux^.info.av2)/ 2;
            write(aux^.info.nome);
            if media >= 6 then 
                writeln('Aprovado')
            else
                writeln('Reprovado')
        end;
    end;
