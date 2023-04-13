{9. Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )}
program ej9;
var
 signo: char;
 num1,num2,num3,num4,total: integer;
begin
    writeln('ingrese + o -');read(signo);
	if(signo <> '+') and (signo <> '-') then
	write('se esperaba un caracter + o -')
	else 
	if(signo = '+') then
	begin
	read(num1,num2,num3,num4);
	write(num1+num2+num3+num4);
	end
else
	if(signo = '-') then
	begin
	read(num1,num2,num3,num4);
	write(num1-num2-num3-num4);
	end
end.