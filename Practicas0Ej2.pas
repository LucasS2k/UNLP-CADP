{
    2. Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:
a. Utilizando una variable adicional
b. Sin utilizar una variable adicional
}
program ej2;
var num1, num2, suma: integer;
begin
  read(num1);
  read(num2);
  suma:= num1 + num2;
  write(suma)
end.