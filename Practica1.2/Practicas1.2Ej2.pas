{2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si
se lee la secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98”}
program ej2;
var
    num1,max,i : integer;

begin
    for i:=1 to 10 do begin
        writeln('ingrese' ,i, '° numero');
        readln(num1);
        if i = 1 then
            max := num1
        else
            if (num1>max) then
                max := num1;
    end;
    writeln('el mayor numero leido fue el ',max);
end.
{a. Modifique el programa anterior para que, además de informar el mayor número leído, se
informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la
misma secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98, en la posición 7”}
program ej2;
var
    num1,max,i,position : integer;

begin
    for i:=1 to 10 do begin
        writeln('ingrese' ,i, '° numero');
        readln(num1);
        if i = 1 then
            max := num1
        else
            if (num1>max) then
                max := num1;
                position := i;
    end;
    writeln('el mayor numero leido fue el ',max, ' y su posicion es',position);
end.
