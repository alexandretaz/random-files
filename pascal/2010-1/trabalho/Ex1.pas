program Ex1;
uses crt;
const pessoas=10; 
type reg=record
	nome:string;
	salario:real;
	idade:integer;
	end;
     tabela=array[1..pessoas] of reg;
var
	t:tabela;
	temp:reg;
	pessoa:integer;
	opcao:integer;

procedure menu;
begin
	clrscr;
	writeln('Menu -- Tecle um número para continuar');
	writeln();
	writeln('1 - Ordenar pelo nome e imprimir na tela');
	writeln('2 - Ordenar pelo salário e imprimir na tela');
	writeln('3 - Ordenar pela idade e imprimir na tela');
	writeln('4 - Sair');
end;
procedure imprime;
var i:integer;
begin
	for i:=1 to pessoas do
		writeln('Nome : ',t[i].nome,' Salário : ',t[i].salario:1:2,' Idade :',t[i].idade);
end;
procedure imprimepornome;
var i,j,k:integer;
begin
	k:=1;
	writeln;
	writeln('Ordenação por nome selecionado');
	writeln;
	for i:=1 to pessoas do
	begin
		for j:=k to pessoas do
		begin
			if t[k].nome > t[j].nome then
			begin
				temp:=t[k];
				t[k]:=t[j];
				t[j]:=temp;
			end;
		end;
		k:=k+1;
		
	end;
	imprime;
end;
procedure imprimeporsalario;
var i,j,k:integer;
begin
	k:=1;
	writeln;
	writeln('Ordenação por salario selecionado');
	writeln;
	for i:=1 to pessoas do
	begin
		for j:=k to pessoas do
		begin
			if t[k].salario > t[j].salario then
			begin
				temp:=t[k];
				t[k]:=t[j];
				t[j]:=temp;
			end;
		end;
		k:=k+1;
		
	end;
	imprime;
end;
procedure imprimeporidade;
var i,j,k:integer;
begin
	k:=1;
	writeln;
	writeln('Ordenação por idade selecionado');
	writeln;
	for i:=1 to pessoas do
	begin
		for j:=k to pessoas do
		begin
			if t[k].idade > t[j].idade then
			begin
				temp:=t[k];
				t[k]:=t[j];
				t[j]:=temp;
			end;
		end;
		k:=k+1;
		
	end;
	imprime;

end;


begin
	while true do
	begin
		clrscr;
		for pessoa:=1 to pessoas do
		begin
			writeln('Entre com o nome :');
			readln(t[pessoa].nome);
			writeln('Entre com a idade :');
			readln(t[pessoa].idade);
			writeln('Entre com o salário:');
			readln(t[pessoa].salario);
			writeln;
		end;
		menu;
		readln(opcao);
		case opcao of
		1:
			imprimepornome;
		2:
			imprimeporsalario;
		3:
			imprimeporidade;
		4:
			exit;
		else
			writeln('Opção inválida');
			
		end;
		readkey;
	end;

end.
	
	
