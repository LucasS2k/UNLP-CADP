{7. Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”
}
program ej7;
var
precioActual,precioNuevo,codigo:integer;
begin
writeln('ingrese el codigo del producto');read(codigo);
while (codigo <= 32767)do
begin
writeln('ingrese el precio actual');read(precioActual);
writeln('ingrese el precio nuevo');read(precioNuevo);
if (precioNuevo > precioActual+precioActual*10/100) then
writeln('el producto: ',codigo,' supera en un 10% a su antiguo valor')
else
writeln('el producto: ',codigo,' no supera en un 10% a su antiguo valor');
writeln('ingrese el codigo del producto');read(codigo);
end;
end.