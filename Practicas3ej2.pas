program Practicas3ej2;
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