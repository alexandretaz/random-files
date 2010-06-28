type data= record
	dia,mes,ano:integer;
	end;
	codigo:integer;
	nome:string;
	nasc:data;
	end;

var
	r:reg;
begin
	r.codigo:=5;
	r.nome:='edson';

	write('codigo : '. r.codigo);
	write('nome : ',r.nome);
end.
