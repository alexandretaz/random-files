program ponteiro;

uses crt;
var p: ^string;
begin
    write('digite o nome : ');
    new(p);
    readln(p^);
    writeln(p^);
end.
