{4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
}
program EJ4;
var
    num1, minimo, secMinimo,i :integer;
    
begin
    i := 0;
    minimo := 32767;
    secMinimo := 32766;
    repeat
        i := i + 1;
        writeln('ingrese un numero (0 para salir)');
        readln(num1);
        if (num1 < minimo) then 
        begin
            secMinimo := minimo;
            minimo := num1;
        end
            else
            if (num1 < secMinimo) then
            secMinimo := num1;
    until (num1 = 0) or (i = 1000);
    writeln('los numeros mas chicos son: ',minimo, 'y',secMinimo);
end.