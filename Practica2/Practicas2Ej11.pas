{Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón
A%B*, donde:
- A es una secuencia de caracteres en la que no existe el carácter ‘$’.
- B es una secuencia con la misma cantidad de caracteres que aparecen en A y en la que aparece a lo sumo
3 veces el carácter ‘@’.
- Los caracteres % y * seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió}

program Practicas2Ej11;

procedure VerificarA(var cumple: boolean; var cantCar: integer);
var
  car: char;
begin
  cantCar := 0;
  readln(car);
  while (car <> '$') and (car <> '%') do begin
     cantCar := cantCar + 1;
     readln(car);
  end;
  if (car = '$') then cumple := false;
end;

procedure VerificarB(var cumple: boolean; cantA: integer);
var
  car: char;
  cantB, cantArroba: integer;
begin
  cantB := 0;
  cantArroba := 0;
  readln(car);
  while (car <> '*') and (cantArroba < 3) and (cantB < cantA) do begin
    cantB := cantB + 1;
    if (car = '@') then cantArroba := cantArroba + 1;
    readln(car);
  end;
  {cumple si: (car = '*') and (cantB = cantA)}
   if (car <> '*') or (cantB <> cantA) then cumple := false;
end;

var
 cumple: boolean;
 cantCar: integer;
begin
  cumple := true;
  VerificarA(cumple,cantCar);
  if (cumple) 
    then begin 
          VerificarB(cumple,cantCar);
          if (cumple) then writeln('Cumple todo')
                      else writeln('No cumple B');
         end
    else
      writeln('No se cumple A');
end.

