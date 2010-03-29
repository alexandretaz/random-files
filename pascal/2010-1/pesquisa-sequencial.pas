program peseque;
const max:=10;
type vetor=array[1..max] of integer;
var
	vet:vetor;
	n:integer;
function MPS(v:vetor;valor:integer):boolean;
var i:integer;
    achou:boolean;
begin
	achou:=False;
	i:=1;
	while i<=MAX do
	begin
		if v[i] = valor then
		begin
			achou:=True;
			i:=MAX;
		end;
	i:=i+1;
	end;
	MPS:=achou;
end;
procedure ORDENA_VETOR(var v:vetor);
var i,j,aux:integer;
begin
	for i:=1 to max - 1 do
		for j:=i + 1 to max do
			if v[i] > v[j]  then
			begin
				aux:=v[i];
				v[i]:=v[j];
				v[j]:=aux;
			end;
		end;
	end;
end;
function MPB(v:vetor,valor:integer):boolean;
var inicio,fim,meio:integer;
    achou:boolean;
begin
	inicio:=1;
	fim:=max;
	achou:=False;
	while (inicio <= fim ) and ( not achou ) do
	begin
		meio:=(inicio+fim) div 2;
		if v[meio] = valor then
			achou:=True
		else
			if valor > v[meio] then
				inicio:= meio + 1
			else
				fim:=meio-1;
	end;
	MPB:=achou;
end;

begin
	PREENCHE_VETOR(vet);
	write('Digite um numero : ');
	readln(n);
	if MPS(vet,n) then
		writeln('Encontrado ')
	else
		writeln('N Encontrado');
	ORDENA_VETOR(vet);
	write('Digite um numero : ');
	readln(n);
	if MPB(vet,n) then
		write('Encontrado ')
	else
		write('N Encontrado');
	EXIBE_VETOR(vet);
end.
