program ej1;
var
 num1,num2: integer;
begin
 writeLn('ingrese el primer numero'); read(num1);
 writeLn('ingrese el segundo numero'); read(num2);
 if (num1 = num2) then 
  write('los numeros ingresados son iguales')
else
   if (num1 > num2) then
   write(num1,'es mayor que',num2)
else 
   write(num2,'es mayor que',num1);
end.