{4. Implemente un programa que lea el diámetro D de un círculo e imprima:
a. El radio (R) del círculo (la mitad del diámetro).
b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R
2
c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
D*PI (o también PI*R*2).}
program  ej4;

var
	Diametro,Radio,PI:real;

begin
	PI:=3.1416;
	writeln('Ingrese diametro');read(Diametro);
	Radio:= Diametro/2;
	writeln('Radio: ',Radio:2:2);
	writeln('Area: ',PI*Radio*Radio:2:2);
	writeln('Perimetro: ',Diametro*PI:2:2);
	read();
end.
