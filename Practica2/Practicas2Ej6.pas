{Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada
producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). Informar:
● Código de los dos productos más baratos.
● Código del producto de tipo “pantalón” más caro.
● Precio promedio.
}
program Ejercicio;
const
  cantProd = 3;
type
  cadena = string[40];
procedure LeerProducto(var codigo: integer; var precio: real; var tipo: cadena);  
begin
  writeln('Ingrese el codigo del producto: ');
  readln(codigo);
  writeln('Ingrese el precio del producto: ');
  readln(precio);
  writeln('Ingrese el tipo del producto: ');
  readln(tipo);
end;
procedure Evaluar2Min(var min1, min2: real; var codMin1, codMin2: integer; codigo: integer; precio: real);
begin
  if (precio < min1)
    then begin
           min2 := min1;
           codMin2 := codMin1;
           min1 := precio;
           codMin1 := codigo;
         end
    else if (precio < min2)
           then begin
                  min2 := precio;
                  codMin2 := codigo;
                end;
end;
procedure EvaluarMax(var max: real; var codPantalonMax: integer; precio: real; codigo: integer);
begin
  if (precio > max) then
    begin
      max := precio;
      codPantalonMax := codigo;
    end;
end;
function promedio(sumaPrecios: real; cantProd: integer): real; 
begin
  if (cantProd > 0) 
     then promedio := sumaPrecios / cantProd
     else promedio := -1;   
end;
var
  precio, min1, min2, max, sumaPrecios: real;
  i, codigo, codMin1, codMin2, codPantalonMax: integer;
  tipo: cadena;
begin
  min1 := 9999;
  max := -1;
  sumaPrecios := 0;
  for i:= 1 to cantProd do begin
    LeerProducto(codigo, precio, tipo);
    Evaluar2Min(min1, min2, codMin1, codMin2,codigo, precio);
    if (tipo = 'pantalon') 
      then EvaluarMax(max, codPantalonMax, precio, codigo);
    sumaPrecios := sumaPrecios + precio;
  end;
  writeln('Los codigos de los productos mas baratos son: ',codMin1, ' y ', codMin2);
  writeln('El codigo del pantalon mas caro es: ', codPantalonMax);
  writeln('El precio promedio es: ', promedio(sumaPrecios,cantProd));
end.