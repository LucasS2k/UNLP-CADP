{3. Realizar un programa que lea 3 números enteros y los imprima en orden descendente.}
program ej3;
var
 num1,num2,num3: integer;
begin
writeln('ingrese 3 numeros'); read(num1,num2,num3);
 if (num1 > num2) and (num2 > num3) then
 writeln(num1,num2,num3)
 else
  if(num2 > num1)and(num1 > num3) then
  writeln(num2, num1,num3)
  else
   if(num2 > num3) and (num3 > num1) then
   writeln(num2,num3 ,num1)
   else
    if(num3 > num2) and (num2 > num1) then
    writeln(num3, num2, num1)
     else
      if (num3 > num1) and (num1 > num2) then
     writeln(num3,num1,num2)
end.