{3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota.
}
program EJ3;
type
notaAlu = 1..10;
const
finalizar = 'Zidane Zinedine';
var
nombre: String;
nota: notaAlu;
ocho, siete: Integer;
begin
  ocho:= 0;
  siete:=0;
  repeat
    Writeln('ingrese nombre y apellido del alumno: '); 
    readln(nombre);
    Writeln('ingrese la nota del alumno: ');
    readln(nota);
    if (nota >= 8) then
    ocho:= ocho+1
     else
     if (nota = 7) then
     siete:= siete +1
  until(nombre = finalizar);
 WriteLn('alumnos con nota superior o igual a 8: ',ocho);
 WriteLn('alumnos con nota igual a 7: ',siete);
end.