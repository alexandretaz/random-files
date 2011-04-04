program listas1;

uses crt;

	{Definicao de no} 

type elemento = integer;
	no = record
		info: elemento;
		prox: ^no;
	end;

	{sempre que estiver manipulando uma lista eh importante a inicializacao da lista e tanbem verificar se esta vazia}

procedure criar;
begin
	inicio:=nil;
	fim:=nil;
end;
function verificar: boolean;
begin
	verificar:=(inicio=nil);
end;
{ procedure para inserir um elemento no final da lista}

procedure inserir(e: elemento);
var aux: ^no;
begin
	new(aux);
	aux^.info:=e;
	aux^.prox:=nil;

	if verificar then
	begin
		inicio:=aux;
		fim:=aux;
	end
	else
	begin
		fim^.prox:=aux;
		fim:=aux;
	end;
end;
{ procedimento para inserir um elemento no inicio da lista }

procedure inserir(e: elemento);
var aux: ^no;
begin 
	new(aux);
	aux^.info:=e;
	if verificar then
	begin
		aux^.prox:=nil;
		inicio:=aux;
		fim:=aux;
	end
	else
	begin
		aux^.prox:=inicio;
		inicio:=aux;
	end;	
begin
end.
