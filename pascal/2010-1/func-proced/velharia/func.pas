program funcao;
var s:string;
var i:real;	
function dobro(n:real):real;
begin
	dobro:=n*2;
end;
function maior(n,m:real):real;
begin
	if n > m then
		maior:=n
	else
		maior:=m;
end;
function mediasemestre(n,m,o:real):real;
begin
	mediasemestre:=(n+m+o)/3;
end;
function mediauni9(n,m,o,p:real):real;
var t:real;
begin
	if n > m then
		t:=n
	else
		t:=m;
	mediauni9:=(t+p+o)/3;
end;

begin
	i:=1;
	s:='asd';
	write(s);
	write(dobro(2));
	write(maior(1,2));
	i:=maior(8,3);
	write(mediasemestre(maior(10,0),6,6));
	write(mediauni9(10,0,10,10):2:2);
end.
