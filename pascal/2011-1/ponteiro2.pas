program soma;
uses crt;

var a,b,c: integer;
    pa,pb,pc: ^integer;
begin
    pa:=@a;
    pb:=@b;
    pc:=@c;
    readln(pa^, pb^);
    pc^:=pa^+ pb^;
    writeln(pc^);
end.
