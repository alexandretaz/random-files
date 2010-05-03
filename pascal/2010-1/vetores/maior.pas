program maior;
var vetor: array[1..10] of integer ;
    i,m:integer;
function MAIOR(v):integer;
begin
	MAIOR:=writeln(v[0]);
end;
begin
	vetor[0]:=42;
	writeln(MAIOR(vetor));

end.
