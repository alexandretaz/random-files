type reg= record
	codigo:integer;
	nome:string;
	end;

var
	r:reg;
begin
	r.codigo:=5;
	r.nome:='edson';

	write('codigo : '. r.codigo);
	write('nome : ',r.nome);
end.
