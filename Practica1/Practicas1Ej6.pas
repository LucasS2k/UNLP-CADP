{6. Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
Por ejemplo, se lee la siguiente secuencia:
33423
8.40
19003
6.43
-1
En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un
promedio).
Al finalizar la lectura, informar:
a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar
1).
c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%).
}
program ej6;
var
	legajo, cantAlu, cantProm, cantDest:integer;
	prom:real;
	
begin
	cantAlu:=0;
	cantProm:=0;
	cantdest:=0;
	writeln('ingrese legajo:');read(legajo);
	while (legajo <> -1) do 
    begin
		writeln('ingrese promedio:');read(prom);
		cantAlu:=cantAlu+1;
		if (prom>6.5) then
			cantProm:=cantProm+1;
		if (prom>8.5) and (legajo<2500) then
			cantDest:=cantDest+1;
		writeln('Ingrese legajo:');read(legajo);
	end;
	if (cantAlu>0) then 
    begin
		writeln('cantidad de alumnos: ',cantAlu);
		writeln('cantidad de alumnos con promedio superior a 6.5: ',cantProm);
		writeln('porcentaje de alumnos destacados: ',cantdest*100/cantAlu:2:2,'%');
	end;
	read();
end.