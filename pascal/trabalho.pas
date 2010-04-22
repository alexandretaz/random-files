{
Fernando Henrique R Silva RA: 409203876
Ciencia da Computacao
}
program tabela;
uses crt;
const 
    MAX = 10;
type registro = record
    nome:string;
    altura:real;
    peso:real;
    idade:integer;
    filhos:integer;
    end;
    tab=array[1..MAX] of registro;
var 
    i,opcao:integer;
    t:tab;
procedure draw_menu();
begin

        clrscr;
        writeln('##### M E N U - TABELAS/REGISTROS #####');

        writeln;
        writeln('0 - S A I R');
        writeln('1 - Apaga/Inicia a tabela como vazia');
        writeln('2 - Preenche todos os registros em branco da tabela');
        writeln('3 - Exibe todos registros da tabela');
        writeln('4 - Preenche um registro especifico pelo indice');
        writeln('5 - Exibe um registro especifico pelo indice');
        writeln('6 - Apaga um registro pelo indice');
        writeln('7 - Media dos pesos registrados');
        writeln('8 - Pessoa mais alta do grupo');
        writeln;

end;

procedure tallest_people(var t:tab);
var 
    tallest:integer;
begin
    tallest:=0;
    for i:=1 to MAX do
    begin
        if tallest < t[i].altura then
            tallest:=i
    end;
    writeln;
    write('A pessoa mais alta da tabela é  : ',t[tallest].nome,' com ',t[tallest].altura:2:1,' m');
    readkey;
end;

procedure average_weight(var t:tab);
var 
    media:real;
    count:integer;
begin 
    count:=0;
    media:=0;
    for i:=1 to MAX do
    begin
        if t[i].peso > 0 then
        begin
            media:=media + t[i].peso;
            count:=count + 1;
        end;
    end;
    writeln;
    if count > 0 then
       begin 
           write('O peso médio é : ',media/count:2:1);
           readkey;
       end;
end;
        


procedure fill_table(var t:tab);
begin
    for i:=1 to MAX do
    begin
        if t[i].nome='' then
        begin
            writeln('Registro ',i);
            writeln;
            write('nome: ');
            readln(t[i].nome);
            write('altura: ');
            read(t[i].altura);
            write('peso: ');
            read(t[i].peso);
            write('idade: ');
            read(t[i].idade);
            write('filhos: ');
            readln(t[i].filhos);
            writeln;
        end;
    end;
end;

procedure fill_item(var t:tab;var i:integer);
begin
        write('nome: ');
        read(t[i].nome);
        write('altura: ');
        read(t[i].altura);
        write('peso: ');
        read(t[i].peso);
        write('idade: ');
        read(t[i].idade);
        write('filhos: ');
        read(t[i].filhos);
end;


procedure erase_table(var t:tab);
begin
    for i:=1 to MAX do
    begin
        t[i].nome:='';
        t[i].altura:=0;
        t[i].peso:=0;
        t[i].idade:=0;
        t[i].filhos:=0;
    end;
end;

procedure erase_item(var t:tab;var i:integer);
begin
        t[i].nome:='';
        t[i].altura:=0;
        t[i].peso:=0;
        t[i].idade:=0;
        t[i].filhos:=0;
end;



procedure show_table(var t:tab);
begin
    clrscr;
    for i:=1 to MAX do 
    begin
        writeln('Registro : ',i);
        writeln;
        writeln('nome: ',t[i].nome);
        writeln('altura: ',t[i].altura:2:1,' m');
        writeln('peso: ',t[i].peso:2:1,' kg');
        writeln('idade: ',t[i].idade,' anos');
        writeln('filhos: ',t[i].filhos);
        writeln;
    end;
    writeln('tecle algo para continuar');
    readkey;
end;

procedure show_item(var t:tab;var i:integer);
begin
    begin
        clrscr;
        writeln('Registro : ',i);
        writeln;
        writeln('nome: ',t[i].nome);
        writeln('altura: ',t[i].altura:2:1,' m');
        writeln('peso: ',t[i].peso:2:1,' kg');
        writeln('idade: ',t[i].idade,' anos');
        writeln('filhos: ',t[i].filhos);
        writeln('tecle algo para continuar');
        readkey;
    end;
end;


begin
    
    repeat
        draw_menu();
        write('digite a opcao desejada : ');
        readln(opcao);
        case opcao of 

            1: erase_table(t);

            2: fill_table(t);

            3: show_table(t);
            
            4: 
                begin
               writeln;
               write('Qual item deseja preecher ? ');
               read(i);
                fill_item(t,i);
                end;

            5: begin
               writeln;
               write('Qual item deseja mostrar ? ');
               read(i);
               show_item(t,i);
               end;
            
            6: begin
               writeln;
               write('Qual item deseja apagar ? ');
               read(i);
               erase_item(t,i);
               end;
            
            7: average_weight(t);
            
            8: tallest_people(t);

        end;





    until opcao = 0 ;
    
end.
