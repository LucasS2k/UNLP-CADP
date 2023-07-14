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
program ej3;
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
function relacion(A,B:Integer);
begin
 relacion := cantAlu/cantDoc;
 end;
var
cantLP: integer;
escuelaMejor1: string20;
escuelaMejor2: string20;
e:escuela;
begin
cantLP:=0;
escuelaMejor1:='';
escuelaMejor2:='';
for i:= 1 to 2 do begin;
leerEscuela(e);
relacionEscuela := relacion(e.cantAlu, e.cantDoc);
if (e.localidad = 'la plata') and (relacionEscuela > 23,435) then
  cantLP := cantLP +1;
if (relacionEscuela > escuelaMejor1) and (relacionEscuela > escuelaMejor2) then begin
  escuelaMejor2 := escuelaMejor1;
  escuelaMejor1 := relacionEscuela;
end
else if (relacionEscuela > escuelaMejor2) then 
 escuelaMejor2 := relacionEscuela;
end;
 WriteLn(cantLP);
end.