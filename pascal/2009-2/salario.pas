program salario;
var sal:real;
var cargo:string;
begin
	writeln('Entre com o cargo:');
	readln(cargo);
	writeln('Entre com o salario:');
	readln(sal);
	case cargo of
	gerente :  	
		sal:= sal*1.2;
		{	'a':  	
		sal:= sal*1.15;
	'p' : 
		sal:= sal*1.1;
	'b' :
		sal:= sal*0.5;}
	else
		sal:= sal*1.05;
	end;
	writeln('O sal novo eh : ',sal);

end.
