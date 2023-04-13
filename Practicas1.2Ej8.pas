{8. Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día
del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se
lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto
total acumulado en ventas de todo el mes.
a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor
cantidad de ventas.
}
program EJ8;
var
ventasDia, montoTotal, ventaMax: real;
i, diaMax: Integer;
begin
  montoTotal:= 0;
  ventaMax:=0;
  diaMax:=0;
  for i:= 1 to 31 do
  begin
    WriteLn('ingrese el monto del ',i, '° dia');ReadLn(ventasDia);
    montoTotal:= montoTotal + ventasDia;
  if (ventasDia > ventaMax) then
  begin
    ventaMax:= ventasDia;
    diaMax := i;
    end
  end;
  WriteLn('el monto total del mes es: ',montoTotal,2,2);
  WriteLn('el dia de mayor venta fue: ',diaMax);
end.