{4. Una compañía de telefonía celular debe realizar la facturación mensual de sus 9300 clientes con planes de
consumo ilimitados (clientes que pagan por lo que consumen). Para cada cliente se conoce su código de
cliente y cantidad de líneas a su nombre. De cada línea se tiene el número de teléfono, la cantidad de minutos
consumidos y la cantidad de MB consumidos en el mes. Se pide implementar un programa que lea los datos
de los clientes de la compañía e informe el monto total a facturar para cada uno. Para ello, se requiere:
a. Realizar un módulo que lea la información de una línea de teléfono.
b. Realizar un módulo que reciba los datos de un cliente, lea la información de todas sus líneas (utilizando
el módulo desarrollado en el inciso a y retorne la cantidad total de minutos y la cantidad total de MB a
facturar del cliente.
Nota: para realizar los cálculos tener en cuenta que cada minuto cuesta $3,40 y cada MB consumido cuesta
$1,35.
}
program Practica3Ej4; 
type
cliente = record
codigo:Integer;
cantL:Integer;
end;
linea = record
numero:integer;
minutos:integer;
MB:Integer;
end;

procedure leerCLiente(var c:cliente);
begin
  read(c.codigo);
  read(c.cantL);
end;

procedure leerLinea (var L: linea);
begin
  read (L.numero);
  read (L.minutos);
  read (L.MB);
end;
procedure procesarLinea (L:linea ; var totalMin:Integer; var totalMB: integer );
begin
  totalMin:=totalMin + L.minutos;
  totalMB:=totalMB + L.MB;
end;
var
cli:cliente;
lin: linea;
i: integer;
i2: integer;
minutosTotales:integer;
MBTotales:integer;
begin
FOR i := 1 to 9300 do begin
  minutosTotales := 0;
  MBTotales:= 0;
  leerCLiente(cli);
  for i2 := 1 to cli.cantL do begin 
  procesarLinea(lin, minutosTotales, MBTotales);
  end;
  WriteLn('coste de los minutos:', minutosTotales*3,40:2:2);
  WriteLn('coste de los megas:', MBTotales*1,35:2:2);
end;
  
end.