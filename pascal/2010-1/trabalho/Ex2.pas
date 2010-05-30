program Ex2;
uses crt;
const pessoas=3; 
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
function buscaBinaria(codigo:integer):boolean;
begin

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
		writeln('Entre com o código a ser pesquisado : ');
		readln(codigo);
		readkey;
	end;

end.
