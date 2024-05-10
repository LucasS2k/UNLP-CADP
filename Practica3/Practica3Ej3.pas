{3. El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la provincia de Bs. As,
con el objetivo de evaluar si se cumple la proporción de alumnos por docente calculada por la UNESCO para el año
2015 (1 docente cada 23,435 alumnos). Para ello, se cuenta con información de: CUE (código único de
establecimiento), nombre del establecimiento, cantidad de docentes, cantidad de alumnos, localidad. Se pide
implementar un programa que procese la información y determine:
● Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO.
● CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos.
El programa debe utilizar:
a) Un módulo para la lectura de la información de la escuela.
b) Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente entre la cantidad
de alumnos y la cantidad de docentes).
}
program Practica3Ej3;
type
string20 = string[20];

escuela = record
cue : integer;
nombre : string20;
cantAlu: integer;
cantDoc: integer;
localidad : string20;
end;
procedure leerEscuela(var e:escuela);
begin
writeln('ingrese el cue');readln(e.cue);
writeln('ingrese el nombre');readln(e.nombre);
writeln('ingrese la cantidad de alumnos');readln(e.cantAlu);
writeln('ingrese la cantidad de docentes');readln(e.cantDoc);
writeln('ingrese la localidad');readln(e.localidad);
end;
procedure PRelacion(e:escuela; var rela:integer)
begin
  rela:= e.cantAlu div e.cantDoc
end;
function cantLP(e:escuela; rela:integer):integer
begin
  if (e.localidad = 'la plata') and (rela > 23435)then
  begin
    cantLP := cantLP + 1
  end;
end;
procedure mejoresEscuelas (e:escuela ; rela:integer ; rela1:integer ; rela2:integer ; cue1:integer ; cue2:integer ; nom1:string ; nom2: string)
begin
  if (rela > rela2) then
  begin
    cue1:= cue2;
    nom1:= nom2;
    rela1:=rela2;
    cue2:= e.cue;
    nom2:= e.nombre;
    rela2:= rela;
  end
  else if (rela > rela1) then
  begin
    nom1:=e.nombre;
    cue1:= e.cue;
    rela1:=rela;
  end;
end;
var
info:escuela;
relacion;relacion1;relacion2:Integer;
cuemejor1;cuemejor2;i:Integer;
nombremejor1;nombremejor2: string20;
begin
  relacion1:=-1;
  relacion2:=-2;
  relacion:=0;
  nombremejor1:='';
  nombremejor2:='';
  for i := 1 to 2400 do begin
    leerEscuela(info);
    PRelacion(info, relacion);
    cantLP(info, relacion);
    mejoresEscuelas(info, relacion1, relacion2, cuemejor1. cuemejor2, nombremejor1, nombremejor2)
  end;
  WriteLn('cantidad de escuelas en La PLata:', cantLP);
  WriteLn('Mejores escuelas:', nombremejor1, cuemejor1,'y',nombremejor2, cuemejor2);
end.