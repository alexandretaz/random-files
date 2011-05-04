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
    temp: string;
    temp_int: integer;
    ocorrencias: boolean;
    cod: integer;

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
{function primeiro(inicio: lista): carro;
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

procedure codigo_unico(l: lista; codigo: integer);
var temp: carro;
begin
    if ((l <> nil) and (ocorrencias=false)) then
    begin
        temp:=l^.dados;
        if (temp.codigo = codigo) then
            ocorrencias:=true;
        codigo_unico(l^.prox, codigo);
    end;
end;

procedure seleciona_carro(l: lista; codigo: integer);
var temp: carro;
begin
    if ((l <> nil) and (ocorrencias=false)) then
    begin
        temp:=l^.dados;
        if (temp.codigo = codigo) then
        begin
            ocorrencias:=true;
            c:=temp;
        end;
        seleciona_carro(l^.prox, codigo);
    end;
end;

procedure cadastro_carro_lista(var l: lista; c: carro);
begin
    clrscr;
    writeln('Cadastro de Automoveis');
    readln();
    writeln();

    write('Codigo: ');
    ocorrencias:=true;
    while (ocorrencias=true) do
    begin
        ocorrencias:=false;
        c.codigo:=random(9999);
        codigo_unico(l, c.codigo);
    end;
    
    writeln(c.codigo);

    write('Modelo: ');
    readln(c.modelo);
    
    write('Marca: ');
    readln(c.marca);

    write('Cor: ');
    readln(c.cor);

    write('Ano: ');
    readln(c.ano);
    
    inserir(l, c);

    write('registro gravado!');

end;


procedure imprime_carro(var c:carro);
begin
    writeln(c.codigo, ' ', c.modelo, ' ', c.marca, ' ',c.cor, ' ', c.ano)
end;

function listar(var sub_comando: integer; parametro: string): boolean;
var c: carro;
    ocorrencias: boolean;
begin
    clrscr;
    ocorrencias:= false;
    abrirArquivo;
    seek(arq, 0);
    while not eof(arq) do
    begin
        read(arq, c);
        {filtros}
        if (( sub_comando = 0 )and (parametro = '')) then
        begin
            imprime_carro(c);
            ocorrencias:=true;
        end
        else
            begin
                case sub_comando of
                    1: begin
                        if (c.marca = parametro) then
                            begin
                                imprime_carro(c);
                                ocorrencias:=true;
                            end;
                       end;
                        
                    2: begin
                        if (c.modelo = parametro) then
                            begin
                                imprime_carro(c);
                                ocorrencias:=true;
                            end;
                       end;
                    
                    3: begin
                        if (c.cor = parametro) then
                            begin
                                imprime_carro(c);
                                ocorrencias:=true;
                            end;
                       end;
                end;
            end;
    end;
    close(arq);
    writeln;
    listar:=ocorrencias;
end;

procedure listar_lista(var l: lista; sub_comando: integer; parametro: string; ocorrencias: boolean);
var temp: carro;
begin
    if (l <> nil) then
    begin
        c:=l^.dados;
        if (( sub_comando = 0 )and (parametro = '')) then
        begin
            imprime_carro(c);
            ocorrencias:=true;
        end
        else
            begin
                case sub_comando of
                    1: begin
                        if (c.marca = parametro) then
                            begin
                                imprime_carro(c);
                                ocorrencias:=true;
                            end;
                       end;
                        
                    2: begin
                        if (c.modelo = parametro) then
                            begin
                                imprime_carro(c);
                                ocorrencias:=true;
                            end;
                       end;
                    
                    3: begin
                        if (c.cor = parametro) then
                            begin
                                imprime_carro(c);
                                ocorrencias:=true;
                            end;
                       end;
                end;
            end;
    listar_lista(l^.prox, sub_comando, parametro, ocorrencias );
    end;
 end;

procedure pesquisa;
var sub_comando: integer;
    parametro: string;
begin
    clrscr;
    writeln('Pesquisa');
    writeln();
    writeln('1 - Por marca');
    writeln('2 - Por modelo');
    writeln('3 - Por cor');
    writeln();
    write('Entre com valor: ');
    readln(sub_comando);
    write('Entre com a palavra chave: ');
    readln(parametro);
    listar_lista(inicio, sub_comando, parametro, ocorrencias);

    if (ocorrencias = false) then
        writeln('Carro nao encontrado');
end;

{----------------------------------------------------------------------}
begin
    inicializa_lista;

    comando := 0;
    while (comando <> 6) do
    begin
        mostrar_menu;
        case comando of
            1:  begin 
                    cadastro_carro_lista(inicio, c);
                    comando:=0;
                    continue;
                end;
            2:  begin
                    pesquisa();
                    comando:=0;
                    writeln('Tecle algo para continuar');
                    readln;
                    continue;
                end;

            3:  begin
                    writeln;
                    write('digite o codigo: ');
                    readln(cod);
                    ocorrencias:=false;
                    seleciona_carro(inicio, cod);
                    if (ocorrencias = true) then
                    begin
                        write('Modelo: ');
                        readln(c.modelo);
    
                        write('Marca: ');
                        readln(c.marca);

                        write('Cor: ');
                        readln(c.cor);

                        write('Ano: ');
                        readln(c.ano);
                    end
                    else
                        writeln('Nao encontrado');

                    comando:=0;
                    writeln('Tecle algo para continuar');
                    readln;
                    continue;
                end;
            5:  begin 
                    temp:='';
                    temp_int:=0;
                    ocorrencias:=false;
                    listar_lista(inicio, temp_int, temp, ocorrencias);
                    comando:=0;
                    ocorrencias:=false;
                    {imprimir_tudo(inicio);}
                    writeln('Tecle algo para continuar');
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
