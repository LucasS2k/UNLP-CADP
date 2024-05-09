{5. Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.}
program ej5;
var
 num1,num2: real;
 i: integer;
begin
i:=0;
 writeln('ingrese su numero');read(num1);
 num2:=num1*2;
 while(num1 <> num2) and (i<9)do 
 begin
 i:=i+1;
 writeln('ingrese otro numero');read(num1);
 end;
 if (i=9) then
 write('no encontrado');
end.