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
        if i = 1 then // primera iteracion
            max := num1
        else
            if (num1>max) then
                max := num1;
    end;
    writeln('el mayor numero leido fue el ',max);
end.