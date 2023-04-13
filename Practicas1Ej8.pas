{8. Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.
}
program ej8;
var
	x,y,z:char;
	char1,char2,char3:boolean;
begin
	writeln('ingrese 3 letras');readln(x);readln(y);readln(z);
		
	char1 := (x = 'a') or (x = 'e') or (x = 'i') or (x = 'o') or (x = 'u');
	char2 := (y = 'a') or (y = 'e') or (y = 'i') or (y = 'o') or (y = 'u');
	char3 := (z = 'a') or (z = 'e') or (z = 'i') or (z = 'o') or (z = 'u');
		
	if (char1) and (char2) and (char3) then
		writeln('las tres letras ingresadas son vocales')
	else
		writeln('al menos una letra no era vocal');
end.