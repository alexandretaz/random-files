program Ex2;
uses crt;
const pessoas=10; 
type reg=record
	nome:string;
	codigo:integer;
	idade:integer;
	end;
     tabela=array[1..pessoas] of reg;
var
	t:tabela;
	temp:reg;
	pessoa:integer;
	codigo:integer;
	resultado:integer;

procedure ordenaPorCodigo;
var i,j,k:integer;
begin
	k:=1;
	for i:=1 to pessoas do
	begin
		for j:=k to pessoas do
		begin
			if t[k].codigo > t[j].codigo then
			begin
				temp:=t[k];
				t[k]:=t[j];
				t[j]:=temp;
			end;
		end;
		k:=k+1;
		
	end;
end;
function buscaBinaria(codigo:integer;pessoas:integer;t:tabela):integer;
var inicio,fim,meio:integer;
begin
	inicio := 1;
	fim := pessoas;
	buscaBinaria:= -1; 
	repeat
		meio := (inicio + fim) div 2; 
		if codigo = t[meio].codigo then
		begin
			buscaBinaria:=meio;
			inicio:=fim+1;
		end;
		if (codigo > t[meio].codigo) then
			inicio:=(meio + 1);
		if (codigo < t[meio].codigo) then
			fim:=(meio - 1);
	until (inicio > fim);
end;
begin
	while true do
	begin
		clrscr;
		for pessoa:=1 to pessoas do
		begin
			writeln('Entre com o código :');
			readln(t[pessoa].codigo);
			writeln('Entre com a nome :');
			readln(t[pessoa].nome);
			writeln('Entre com o idade:');
			readln(t[pessoa].idade);
			writeln;
		end;
		ordenaPorCodigo;
		writeln('Entre com o código a ser pesquisado : ');
		readln(codigo);
		resultado :=  buscaBinaria(codigo,pessoas,t);
		if resultado <> -1 then
		begin
			writeln('registro encontrado: ');
			writeln(t[resultado].codigo,' nome : ',t[resultado].nome,' idade : ',t[resultado].idade);
		end
		else
			writeln('registro não encontrado');

		readkey;
	end;

end.
