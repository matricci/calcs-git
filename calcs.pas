Program Pzim ;
uses
Crt;
var
op :char ;
{fatorial}
procedure
fat;
var fatorial: integer ;
    i: integer ;
    N: Integer;    
 Begin 
     // Solicita o valor de N
	write('Informe o Valor de N: ');
	readln(N);
	// Calcula o fatorial
	fatorial:= 1;
	for i:= 1 to N do
	  begin
	    	fatorial:= fatorial * i;
       end;
     // Mostra resultado  
     write('O Valor de ', N, ' Fatorial é: ', fatorial);
 End;
{conversor de unidades de temperatura}
procedure 
conv;
var 
C, F, K :real;
re :char;
begin 
 writeln('Qual unidade de medida de Temperatura deseja converter ?');
 writeln('a) ºC => K');
 writeln('b) ºC => ºF');
 writeln('c)  K => ºC') ;
 readln(re);
if (re ='a') then
 begin
 writeln('digite a temperatura em ºC'); readln(C);
 K := 273.15 + C;
 writeln('A temperatura em Kelvins é =', K);
 readkey;		
end;
if (re ='b') then
 begin
 writeln('Digite a temperatura em ºC'); readln(C);
 F := (9*C)/5 + 32;
 writeln('A temperatura em Fahrenheit é =', F);
 readkey;
 end;
if (re='c') then 
 begin
 writeln('Digite a temperature em Kelvins');
 readln(K);
 C := K - 273.15;
 writeln('A temperatura em Celsis é =', C);
  readkey;
	end;
end;
{procedimento de cálculo de equação de 2º grau}
procedure
equ2;
var a, b, c : integer ;
delta, x1, x2 : real ;
Begin
  textcolor(white);
  writeln('Raizes da equacao ax^2 + bx + c = 0');
  // Solicita os valores de a, b e c
  write('Entre com o valor de a : ');
  read( a );
  write('Entre com o valor de b : ');
  read( b );
  write('Entre com o valor de c : ');
  read( c );
  // Calcula o valor de delta
  delta := sqr(b) - 4*a*c ;
  writeln('Delta = b^2 - 4ac') ;
  writeln('O valor de delta = ', delta );
  // Verifica se existem raizes reais
  if( delta < 0 ) then
  Begin
    textcolor(lightred); writeln('Porque delta e menor do que zero, nao existem raizes reais.'); textcolor(white);
  End;
  // Verifica se só tem uma raiz
  if( delta = 0 ) then
  Begin
    writeln('Para delta = 0 so existe uma raiz real, x1') ;
    writeln('Nesse caso x1 = -b/2a ');
    x1 := -b / (2*a) ;
    writeln('O valor de x1 = ');
    textcolor(lightred);
    writeln(1);
    textcolor(white);
  End ;
  // Verifica se existem duas raizes
  if( delta > 0 ) then
  Begin
    writeln('Para delta > 0 existem duas raizes reais, x1 e x2') ;
    writeln('Nesse caso x1 = (-b + raiz(delta)) / 2a ');
    writeln('Nesse caso x1 = (-b - raiz(delta)) / 2a ');
    x1 := (-b + sqrt(delta)) / (2*a) ;
    x2 := (-b - sqrt(delta)) / (2*a) ;
    writeln('O valor de x1 = ');
    textcolor(lightred); writeln(x1); textcolor(white);
    writeln('O valor de x2 = ');
    textcolor(lightred); writeln(x2); textcolor(white);
  End ;
End;
{informa o tipo de triângulo}
procedure
tria;
Var X, Y, Z: real;
Begin
  // Solicita os valores de x, y e z
  write('Informe o valor do lado X: ' );
  readln(x);
  write('Informe o valor do lado Y: ');
  readln(y);
  write('Informe o valor do lado Z: ');
  readln(z);
  // Imprime o tipo de triângulo
  if (x<=0) or (y<=0) or (z<=0) then
  begin
    writeln('Um triângulo não pode ter lados nulos ou negativos');
  end
  else if (X>(Y+Z)) or (Y>(X+Z)) or (Z>(X+Y)) then
  begin
    writeln(X:1:0,', ',Y:1:0,' e ',Z:1:0,' não são lados de um triângulo.');
  end
  else if (x=y) and (y=z) then
  begin
    write ('O triângulo é equilátero');
  end
  else if (x=y) or (x=z) or (y=z) then
  begin
    write ('O triângulo é isósceles');
  end
  else
  begin
    write('O triângulo é escaleno');
  end;
End;
// Pitágoras
procedure 
pita;
var 
 h, ca, co :real;
op:char;
begin 
writeln('a)calcula a hipotenusa ');
writeln('b)calcula o cateto adjacente');
writeln('c)calcula o cateto oposto ');
readln(op);
if (op='a') then
begin 
writeln('informe o valor do cateto adjacente'); readln(ca);
writeln('informe o valor do cateto oposto'); readln(co);
h :=sqrt(co*co+ca*ca);
writeln('hipotenusa =',h);
end;
if (op='b') then
begin 
writeln('informe o valor da hipotenusa'); readln(h); 
writeln('informe o valor do cateto oposto'); readln(co);
ca:=sqrt(h*h-co*co);write('cateto adjacente =',ca);
end;
if (op='c') then
begin 
writeln('informe o valor da hipotenusa'); readln(h); 
writeln('informe o valor do cateto adjacente'); readln(ca);
co:=sqrt(h*h-ca*ca); write ('cateto oposto =', co);
end;
end;
// calcula a altura de triangulo equilatero
procedure
htri;
var 
l, h :real;
begin 
writeln('digite o valor do lado'); readln(l);
h:=l*sqrt(3)/2;
writeln('Altura =',h);
end;


{programa principal}
begin
  textcolor(white);
  op :='0'    ;
  while (op<>'3') do
  Begin
    writeln(' Programa de calculos ');
    writeln('  criado por : Matheus Ricci ')    ;
    writeln;
    writeln('   a) Equação de 2º grau');
    writeln('   b) Informa o tipo de triângulo');
    writeln('   c) Conversor de temperatura');
    writeln('   d) Fatorial');
    writeln('   e) Pitagoras');
    writeln('   f) Altura de triangulo equilatero');
    writeln('   0) Sair');
    readln(op);
    if (op='a') then
    equ2;
    if (op='b') then
    tria;
    if (op='c') then
    conv;
    if (op='d') then
    fat;
    if (op='e') then 
    pita;
    if (op='f') then 
    htri;
    if (op='0') then 
    exit
    else
    writeln('digite  algo válido'); readln(op);
    if (op='a') then
    equ2;
    if (op=	'b') then
    tria;
    if (op='c') then
    conv;
    if (op='d') then
    fat;
    if (op='e') then
    pita;
    if (op='f') then 
    htri;
    if (op='0') then 
    exit;
  end;
End.	
