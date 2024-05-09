{4. Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).
}
program ej4;
var
 num1,num2: real;
begin
 writeln('ingrese su numero');read(num1);
 num2:=num1*2;
 while(num1 <> num2) do 
 begin
 writeln('ingrese otro numero');read(num1);
 end
end.