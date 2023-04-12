{2. Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero
}
program ej2;
var
 num1: real;
begin
 writeLn('ingrese un numero real');read(num1);
 if (num1 < 0) then
 num1 := -num1;
 writeLn('el valor absoluto es:',num1)
end.