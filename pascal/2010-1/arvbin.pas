program arvbin;
inicio:=1;
fim:=1;
achou:=True;
while (inicio <= fim ) and ( not achou ) do
	begin
		aux:=v[i];
		v[i]:=v[j];
		v[j]:=aux;
	end;
