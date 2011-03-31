program ponteiro;
uses crt;

var a,b,c: integer;
    pa,pb,pc,pd: ^integer;
begin
    pa:=@a;
    pb:=@b;
    pc:=@c;
    new(pd);
    pd^:=33;
    pa^:=2;
    pb^:=5;
    pc^:=pa^ + pb^ + pd^;
    writeln(pc^);
end.
