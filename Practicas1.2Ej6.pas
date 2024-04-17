{6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.
}
program EJ6;
var
minimo,secMinimo,parSup16,i,precio: Integer;
codigo: Integer;
begin
  minimo:=32767;
  secMinimo:=32766;
  parSup16:=0;
  for i:=1 to 200 do 
  begin
    WriteLn('ingrese el codigo del producto: ');read(codigo);
    WriteLn('ingrese el valor del producto: ');read(precio);
    if(precio < minimo) and (precio < secMinimo) then
      secMinimo:=precio
      else
      if (precio < minimo) then
       minimo:= precio;
    if(precio > 16) and (precio mod 2 = 0) then
    parSup16:=parSup16+1;  
  end;
  WriteLn('los codigos de los productos mas baratos son: ',minimo,' y ',secMinimo);
  WriteLn('los productos pares mayores a 16 son: ',parSup16);
end.
