program revendedora;
uses crt;
type
    carro = record
        marca: string;
        modelo: string;
        cor: string;
        ano: integer;
        codigo: integer;
    end;
    plista = ^no;
    lista = plista;
    no = record
        dados: carro;
        {dados: integer;}
        prox: lista;
    end;

    arquivo = file of carro;

var inicio, fim: lista;
    arq:arquivo;
    c:carro;
    comando: integer;

procedure inicializa_lista;
begin
    inicio:=nil;
    fim:=nil;
end;

function inicio_eh_nulo: boolean;
begin
	inicio_eh_nulo:=(inicio=nil);
end;

procedure mostrar_menu;
begin
    clrscr;
    writeln('Revendedora');
    writeln();
    writeln('1 - Cadastrar novo carro');
    writeln('2 - Pesquisar carro');
    writeln('3 - Alterar cadastro de carro');
    writeln('4 - Excluir carro');
    writeln('5 - Listar carros');
    writeln('6 - Finalizar o sistema');
    writeln();
    writeln('Entre com valor: ');

end;

procedure inserir(var l: lista; c: carro);
var aux: lista;
begin
	new(aux);
	aux^.dados:=c;
	aux^.prox:=nil;

	if inicio_eh_nulo then
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
{
function primeiro(inicio: lista): carro;
begin
    primeiro:=inicio^.dados;
end;
}
procedure imprimir_tudo(l: lista);
var temp: carro;
begin
    if (l <> nil) then
    begin
        temp:=l^.dados;
        write(temp.modelo);
        imprimir_tudo(l^.prox);
    end;
end;


procedure abrirArquivo;
begin
    assign(arq, 'dados.dat'); {$I-}
    reset(arq); {$I+}

    if ioresult=0 then
    begin
        seek(arq, filesize(arq)); 
    end
else
    begin
        writeln('arquivo non ecxiste');
        rewrite(arq);
        seek(arq, 0);
    end;
end;


procedure cadastro_carro(var l: lista; c: carro);
begin
    clrscr;
    abrirArquivo;
    writeln('Cadastro de Automoveis');
    readln;
    write('Modelo: ');
    readln(c.modelo);
    
    write('Marca: ');
    readln(c.marca);

    write('Cor: ');
    readln(c.cor);

    write('Ano: ');
    readln(c.ano);
    
    write(arq, c);
    write('registro gravado!');
    close(arq);

end;

procedure listar;
var c: carro;
begin
    clrscr;
    abrirArquivo;
    seek(arq, 0);
    while not eof(arq) do
    begin
        read(arq, c);
        writeln(c.codigo, ' ', c.modelo, ' ', c.marca, ' ',c.cor, ' ', c.ano);
    end;
    close(arq);
    writeln;
    writeln('Tecla algo para continuar');
end;



begin
    inicializa_lista;

    comando := 0;
    while (comando <> 6) do
    begin
        mostrar_menu;
        case comando of
            1:  begin 
                    cadastro_carro(inicio, c);
                    comando:=0;
                    continue;
                end;
            5:  begin 
                    listar;
                    comando:=0;
                    readln;
                    readln;
                    continue;
                end;
       end;
        { 
        c.modelo:='fusca ';
        inserir(inicio, c);
        c.modelo:='uno ';
        inserir(inicio, c);
        c.modelo:='porche ';
        inserir(inicio, c);
        }
        {writeln(inicio^.dados);}
        {imprimir_tudo(inicio);}

        read(comando);
    end;
end.
