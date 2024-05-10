{2. El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el
año 2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese
año.
a. Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada
casamiento.
b. Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el
definido en el inciso a.
c. Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura
finaliza al ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos
realizados durante los meses de verano (enero, febrero y marzo) y la cantidad de casamientos
realizados en los primeros 10 días de cada mes. Nota: utilizar el módulo realizado en b) para la lectura
de fecha.
}
program Practica3ej2;
type
 fecha=record
 anio: integer;
 mes: integer;
 dia: integer;
end;

procedure leerFecha(var F: fecha);
begin
writeln('ingrese el anio');
 read(F.anio);
 write ('ingrese el mes');
 read(f.mes);
 write ('ingrese el dia');
 read(F.dia);
 end;
procedure mesVerano(F:fecha; var cantVerano: integer);
begin
 if(F.mes >= 1) and (F.mes <= 3) then 
 begin
 cantVerano := cantVerano + 1;
end
end;
procedure diaDiez(F:fecha; var cantDiez: integer);
 begin
 if (F.dia<=10) then
 cantDiez := cantDiez +1
 end;
var
F: fecha;
verano: integer;
diez: integer;
begin
verano:=0;
diez:=0;
writeln('ingrese un anio para comenzar o 2020 para finalizar');
leerFecha(F);
while (F.anio <> 2020) do begin
 mesVerano(F, verano);
 diaDiez(F, diez);
 leerFecha(F)
 end;
writeln ('cantidad de casamientos en verano:',verano);
writeln('cantidad de casamientos en los primeros diez dias del mes:',diez);
end.