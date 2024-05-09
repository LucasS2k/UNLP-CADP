{a. Realizar un módulo que reciba como parámetro un número entero y retorne la cantidad de dígitos que
posee y la suma de los mismos.
b. Utilizando el módulo anterior, realizar un programa que lea una secuencia de números e imprima la
cantidad total de dígitos leídos. La lectura finaliza al leer un número cuyos dígitos suman exactamente 10, el
cual debe procesarse.

Por ejemplo: si se ingresa 385 22 1000 91, debe imprimir 11.
}
program Practicas2Ej7;
type
  rangoDigito = 0..9;

procedure Descomponer(num: integer; var cantDig, sumaDigitos: integer);
var
  dig: rangoDigito;
begin
  cantDig := 0;
  sumaDigitos := 0;
  while (num <> 0) do begin
    dig := num MOD 10; {obtengo el ultimo numero}
    cantDig := cantDig + 1;
    sumaDigitos := sumaDigitos + dig;
    num := num DIV 10; {achico el numero}
  end;
end;

var num, sumaDigitos, cantDig, totalDig: integer;

begin
  totalDig := 0;
  repeat
    writeln('Ingrese un numero entero: ');
    readln(num);
    Descomponer(num, cantDig, sumaDigitos);
    totalDig := totalDig +  cantDig;
  until(sumaDigitos = 10);
  writeln('La cantidad total de digitos leidos es: ', totalDig);
end.