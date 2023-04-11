{6. Realice un programa que informe el valor total en pesos de una transacción en dólares. Para
ello, el programa debe leer el monto total en dólares de la transacción, el valor del dólar al día
de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la transacción. Por
ejemplo, si la transacción se realiza por 10 dólares, el dólar tiene un valor 189,32 pesos y el
banco cobra un 4% de comisión, entonces el programa deberá informar:
La transacción será de 1968,93 pesos argentinos
(resultado de multiplicar 10*189,32 y adicionarle el 4%)
}
program ej6;

var
totalPesos,totalTransaccion,comision,dolarCant,valorDolar: real;
begin
	writeLn('ingrese el precio actual del dolar');read(valorDolar);
	writeLn('ingrese la cantidad de dolares');read(dolarCant);
	writeLn('ingrese la comision');read(comision);
	totalPesos :=valorDolar * valorDolar;
	totalTransaccion:= totalPesos*comision/100;
	write(totalTransaccion,1,2);
end.