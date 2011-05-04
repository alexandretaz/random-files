function testar(a:arq):boolean;
begin
    assign(a, 'alunos.dat');
    {$I-}
    reset(a);
    {$I+}
    if ioresult = 0 then
        testar:=true
    else
        testar:=false
    end;
