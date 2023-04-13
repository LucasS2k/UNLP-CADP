{5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.}
program EJ5;
var
num1, maximo, minimo, suma: integer;
begin
  maximo := -32768;
  minimo := 32767;
  suma := 0;
  repeat
    WriteLn('ingrese un numero: ');read(num1);
    if (num1 > maximo) then
    maximo:=num1
    else
    if (num1<minimo) then
    minimo:=num1;
    suma := suma + num1;
    until(num1 = 100);
  WriteLn('el numero mas grande ingresado fue: ',maximo);
  WriteLn('el numero mas chico ingresado fue: ',minimo);
  WriteLn('la suma de todos los numeros ingresados es: ',suma);
end.