program ordvet;
for i:=1 to MAX - 1 do
	for j:=i + 1 to max do
		if v[i] > v[j]  then
		begin
			aux:=v[i];
			v[i]:=v[j];
			v[j]:=aux;
		end;
