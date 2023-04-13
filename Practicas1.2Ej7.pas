{7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.
}
program EJ7;
var
nombre,primero,segundo,penultimo,ultimo: String;
tiempo,Tprimero,Tsegundo,Tpenultimo,Tultimo: real;
i: integer;
begin
  Tprimero:=99999;
  Tsegundo:=99998;
  Tpenultimo:= -99999;
  Tultimo:= -99998;
  primero:= '';
  segundo:='';
  penultimo:='';
  ultimo:='';
  for i:= 1 to 100 do
    begin
      writeln('ingrese el nombre del piloto');readln(nombre);
      writeln('ingrese el tiempo que le tomó al piloto completar la carrera: ');readln(tiempo);
      if (tiempo < Tprimero) and (tiempo < Tsegundo) then
        begin
        primero:= nombre;
        Tprimero:= tiempo;
        end
        else 
        if (tiempo < Tsegundo) and (tiempo > Tprimero) then
        begin
          segundo := nombre;
          Tsegundo := tiempo;
        end
        else 
        if (tiempo > Tpenultimo) and (tiempo < Tultimo) then
        begin
        penultimo:= nombre;
        Tpenultimo:= tiempo;
        end
        else 
        if (tiempo > Tpenultimo) and (tiempo > Tultimo) then
        begin
          ultimo := nombre;
          Tultimo := tiempo;
        end
    end;
    WriteLn('los pilotos que finalizaron primeros son: ',primero, ' y ',segundo);
    WriteLn('los pilotos que finalizaron ultimos son: ',penultimo,' y ',ultimo);
end.