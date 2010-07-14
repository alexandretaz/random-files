program exercicio6;
uses crt;
	var idade,esco,h_pos,m_pos,analfa,primaria,secundaria50,secundaria,gradu:integer;
		sexo,nome,opcao:char;
		i:longint;
begin
	clrscr;
	{ Inicializando as variaveis}
	h_pos:=0;
	m_pos:=0;
	analfa:=0;
	primaria:=0;
	secundaria50:=0;
	secundaria:=0;
	{gera seed de randomização a ser usada posteriormente}
	Randomize;
	repeat
	writeln('O programa cadastra e gera relatorios baseados em dados cadastrados pelo usuario ou em numeros ficticios.');
	writeln('Tecle [c] para cadastro');
	writeln('Tecle [p] para popular base de dados de forma randomica');
	writeln('Tecle [r] para gerar relatorios');
	writeln('Tecle [s] para sair do programa');
	writeln('');
	readln(opcao);

	case opcao of
		'c' : begin
			{descontamina dados, reinicializando variaveis}
			h_pos:=0;
			m_pos:=0;
			analfa:=0;
			primaria:=0;
			secundaria50:=0;
			secundaria:=0;
			for i:=1 to 160000 do
				begin
						
				writeln('');
				writeln('Entre com o nome');
				{ O nome e descartado por nao ter valor estatistico}
				readln(nome);
				writeln('Entre com a idade');
				readln(idade);
				writeln('Qual sexo ([f]eminino [m]asculino ?');
				readln(sexo);
				writeln('Entre com a escolaridade ([0] Analfabeto [1] Primario [2] Secundario [3] superior [4] pos-graduacao)');
				readln(esco);
				writeln('');
				case esco of
					0 : analfa:=analfa+1;
					1 : primaria:=primaria+1;
					2 : begin
						if idade>50 then begin
								secundaria50:=secundaria50+1;
					       end;
					      secundaria:=secundaria+1;	
			      		    end;
				      	3 : gradu:=gradu+1;
					4 : 
					begin
						if sexo='f' then
							m_pos:=m_pos+1
					        else
						        h_pos:=h_pos+1;
						end;
					end;
		                 
				 writeln('Tecle [s] para voltar ao menu anterior, ou qualquer tecla para continuar');
				 readln(opcao);
				 if opcao='s' then begin
				 { Altera opcao para nao conflitar com o menu anterior}
				 	opcao:='v';
					{hack pra gerar relatorios de cadastro de forma correta}
				 	Break;
				end;
				end;
               		end;
		'p' : 
		begin 
			{descontamina dados, reinicializando variaveis}
			h_pos:=0;
			m_pos:=0;
			analfa:=0;
			primaria:=0;
			secundaria50:=0;
			secundaria:=0;
			for i:=1 to 160000 do
				begin
			        idade:=random(100);
			
				if random(2)=0 then
					sexo:='f'
				else
					sexo:='m';
				esco:=random(5);
				case esco of
					0 : analfa:=analfa+1;
					1 : primaria:=primaria+1;
					2 : begin
						if idade>50 then begin
								secundaria50:=secundaria50+1;
					       end;
					      secundaria:=secundaria+1;	
			      		    end;
				      	3 : gradu:=gradu+1;
					4 : 
					begin
						if sexo='f' then
							m_pos:=m_pos+1
					        else
						        h_pos:=h_pos+1;
					end;
		                 end;
			 end;
			writeln('');
			writeln('Dados gerados com sucesso !');
			writeln('');
		 end;
		 'r' : 
			begin
				writeln('');
		 		writeln('Numero de pessoas pesquisadas : ',i);
				writeln('Numero de analfabetos : ',analfa);
				writeln('Numero de pessoas com instrucao primaria: ',primaria);
				writeln('Numero de pessoas com mais de 50 anos e instrucao secundaria : ',secundaria50);
				writeln('Numero de pessoas com formacao superior : ',gradu);
				writeln('Numero de homens pos-graduados: ',h_pos);
				writeln('Numero de mulheres pos-graduadas: ',m_pos);
				writeln('');
			end;
	 end;
	until opcao='s';

end.
