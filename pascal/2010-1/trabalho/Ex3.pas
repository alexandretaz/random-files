{
Grupo #12
Fernando Henrique Rodrigues da Silva ra: 409203876
Eduardo Shinhei Nakazone Yonamine    ra: 409200597
Ana Maria Rybacki de Moura	     ra: 409204338

}
program Ex2;
uses crt;
const pessoas=10; 
type reg=record
	nome:string;
	ra:integer;
	notaAv1,notaAv2:real;
	faltas:integer;
	end;
     tabela=array[1..pessoas] of reg;
var
	t:tabela;
	temp:reg;
	pessoa,ra,resultado,opcao,i,faltas,alunosAprovados,alunosReprovNota,alunosReprovFalta:integer;
	total:real;

procedure menu;
begin
	clrscr;
	writeln('Menu -- Tecle um número para continuar');
	writeln();
	writeln('1 - Apresentar os nomes dos alunos em ordem alfabética');
	writeln('2 - Apresentar a média da turma');
	writeln('3 - Adicionar faltas a um aluno'); 
	writeln('4 - Apresentar a quantidade de alunos aprovados, reprovados por nota e reprovados por falta');
	writeln('0 - Sair');
	writeln;
end;
procedure imprime;
var i:integer;
begin
	for i:=1 to pessoas do
		writeln('RA: ',t[i].ra,' Nome: ',t[i].nome,' Av1: ',t[i].notaAv1:1:2,' Av2: ',t[i].notaAv2:1:2,' Média final: ',(t[i].notaAv1 + t[i].notaAv2)/2:1:2 , ' Faltas :',t[i].faltas);
end;
procedure ordenaPorRA;
var i,j,k:integer;
begin
	k:=1;
	for i:=1 to pessoas do
	begin
		for j:=k to pessoas do
		begin
			if t[k].ra > t[j].ra then
			begin
				temp:=t[k];
				t[k]:=t[j];
				t[j]:=temp;
			end;
		end;
		k:=k+1;
		
	end;
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



function buscaBinaria(ra:integer;pessoas:integer;t:tabela):integer;
var inicio,fim,meio:integer;
begin
	inicio := 1;
	fim := pessoas;
	buscaBinaria:= -1;
	repeat
		meio := (inicio + fim) div 2; 
		if ra = t[meio].ra then
		begin
			buscaBinaria:=meio;
			inicio:=fim+1;
		end;
		if (ra > t[meio].ra) then
			inicio:=(meio + 1);
		if (ra < t[meio].ra) then
			fim:=(meio - 1);
	until (inicio > fim);
end;
begin
	for pessoa:=1 to pessoas do
	begin
		writeln('Entre com o RA :');
		readln(t[pessoa].ra);
		writeln('Entre com a nome :');
		readln(t[pessoa].nome);
		writeln('Entre com o nota Av1:');
		readln(t[pessoa].notaAv1);
		writeln('Entre com o nota Av2:');
		readln(t[pessoa].notaAv2);
		writeln('Entre com o número de faltas:');
		readln(t[pessoa].faltas);
		writeln;
	end;

	while true do
	begin
		clrscr;
		menu;
		readln(opcao);
		case opcao of
		1:
			begin
				imprimepornome;
			end;

		2:
			begin
				total:=0;
				for i:=1 to pessoas do
				begin
					total:=total + t[i].notaAv1 + t[i].notaAv2;				
				end;
				writeln('A média da turma é : ',total/(pessoas*2):1:2);
			end;
		3:
			begin
				ordenaPorRA;

				writeln('Entre com o RA do aluno : ');
				readln(ra);
				resultado :=  buscaBinaria(ra,pessoas,t);
				if resultado <> -1 then
				begin
					writeln('registro encontrado: ');
					writeln('RA: ',t[resultado].ra,' Nome: ',t[resultado].nome,' Av1: ',t[resultado].notaAv1:1:2,' Av2: ',t[resultado].notaAv2:1:2,' Faltas :',t[resultado].faltas);
					writeln('Entre com o número de faltas');
					readln(faltas);
					t[resultado].faltas:=t[resultado].faltas+faltas;
					writeln('registro alterado: ');
					writeln('Novo número de faltas :',t[resultado].faltas);
				end
				else
					writeln('registro não encontrado');
				end;
		4:
			begin
				alunosAprovados:=0;
				alunosReprovNota:=0;
				alunosReprovFalta:=0;
				for i:=1 to pessoas do
				begin
					if ((t[i].notaAv1 + t[i].notaAv2)/2 >= 6.0) and (t[i].faltas <= 10) then
						alunosAprovados:=alunosAprovados + 1;
					if ((t[i].notaAv1 + t[i].notaAv2)/2 < 6.0) and (t[i].faltas >10) then
						alunosReprovNota:=alunosReprovNota+1;
					if ((t[i].notaAv1 + t[i].notaAv2)/2 < 6.0) and not (t[i].faltas > 10) then
						alunosReprovNota:=alunosReprovNota+1;
					if (t[i].faltas > 10) and ( (t[i].notaAv1 + t[i].notaAv2)/2 >= 6.0 ) then
						alunosReprovFalta:=alunosReprovFalta+1;
				end;
				writeln('Alunos aprovados : ',alunosAprovados); 
				writeln('Alunos reprovados por falta : ',alunosReprovFalta); 
				writeln('Alunos reprovados por nota : ',alunosReprovNota); 
		end;
		0:
			exit;
		else
			writeln('Opção inválida');
		end;



		readkey;
	end;

end.
