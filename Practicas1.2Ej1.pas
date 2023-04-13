{(parte 2) – Estruc. de control: for y repeat-until
1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5}
program ej1;
var
    num1,suma,i,mayor : integer;
begin
    suma := 0;
    mayor := 0; 
    for i:=1 to 10 do begin
        writeln('Ingrese ',i,'° numero');
        readln(num1);
        suma := suma + num1;
        if (num1 >5) then
            mayor := mayor +1;
    end;
    writeln('suma total: ', suma);
    writeln('cantidad de numeros mayores que 5: ',mayor);
end.