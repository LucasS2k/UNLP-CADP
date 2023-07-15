program practica
type 
{estructura de una lista}
lista = ^nodo
nodo = record
elem: datos
sig: lista
end
datos= record
dato1: integer
dato2:integer
end

{recorrer lista}
procedure recorrer(L:lista)
var aux:lista
begin
aux:=pi
while (L <> nil) do begin
write(aux^.datos.dato1){se realiza lo que se nesecite}
aux:=aux^.sig{se avanza en la lista}
end
end
{agregar adelante}
procedure agregarAdelante(var Pi: lista; nuevoDato:integer){se ingresa var asi se retorna la lista modificada y se necesita modificar el puntero inicial}
var
nuevo: lista
begin
{se necesita abrir memoria para agregar algo nuevo}
new(nuevo)
nuevo^.elem:=nuevoDato
nuevo^.sig:=nil
if (Pi = nil) then Pi := nuevo {en caso de que esto sea true Pi es el primer nodo y debe ser desplazado}
else begin
nuevo^.sig:=Pi {en caso contrario el nuevo dato se coloca antes de Pi y ahora Pi es el siguiente}
Pi:=nuevo {el nuevo nodo se convierte en el primer nodo}
end
end
procedure agregarAlFinal(var Pi:lista; nuevoDato:integer)
var
nuevo, aux: lista
begin
new(nuevo)
nuevo^.elem:=nuevoDato
nuevo^.sig:=nil
if (Pi = nil) then Pi = nuevo {verificamos si la lista esta vacia y de ser cierto colocamos el primer dato que es el nuevo} 
else begin 
aux:= Pi
while (aux^.sig <> nil) do begin {avanzamos en la lista mientras el SIGUIENTE sea distinto de nil}
  aux:= aux^.sig
aux^.sig:=nuevo {al salir del while el dato actual es el ultimo de la lista y colocamo como su siguiente el nuevo dato}
end
end

function Busqueda(Pi:lista; buscado:integer):boolean
var
aux:lista
encontre: boolean
begin
encontre:= false
aux:=Pi
while ((aux<>nil) and (encontre = false)) do begin
if (aux^.elem = buscado) then encontre := true
else 
aux:=aux^.sig
end
Busqueda:= encontre
end

function BusquedaOrd(Pi:lista; buscado: integer):boolean
var
aux: lista
encontre: boolean
begin
encontre:= false
aux:=Pi
while ((aux<>nil)and (aux^.elem<valor)) do begin
aux:=aux^.sig
end
if (aux <> nil)and (aux^.elem=buscado) then encontre := true
BusquedaOrd:=encontre
end

procedure eliminar1(var Pi: lista; dato:integer)
var actual, anterior:lista
begin
actual:=Pi
while (actual <> nil) and (actual^.elem <> dato) do begin
anterior:= actual
actual := actual^.sig
end
if (actual <> nil) then
  if (actual = Pi) then {en caso de que sea el primer nodo}
  Pi := Pi^.sig {se desplaza el puntero de Pi al siguiente perdiendo al actual primer nodo para despues borrarlo}
  else
  ant^.sig:= actual^.sig {se une el nodo anterior con el siguiente del actual para eliminar el nodo que queda en medio}
  dispose (actual)
end

procedure eliminar2oMas(var Pi: lista; dato:integer)
var
actual, anterior: lista
begin 
actual:= Pi
while (actual <> nil ) do begin
 if (actual^.elem <> dato) then begin
  ant := actual
  actual:= actual^.sig
  end
else begin
 if (actual = Pi) then
 Pi := Pi^.sig
 else
 ant^.sig := actual^.sig
 dispose (actual)
 actual := ant
 end
 end
 procedure insertar (var Pi: lista; dato: integer)
 var
 actual,anterior,nuevo: lista
 begin
 new(nuevo)
 nuevo^.elem:=valor
 nuevo^.sig:=nil
 if (Pi = nil) then Pi := nuevo
 else begin
 actual := Pi
 ant:= Pi
 while (actual <> nil) and (actual^.elem < nuevo^.elem) do begin
 anterior := actual
 actual := actual^sig
 end
 end
 if (actual = Pi) then begin
 nuevo^.sig := Pi
 Pi := nuevo
 end
 else begin
 anterior ^.sig:= nuevo
 nuevo^.sig:=actual
end
end
var L:lista
begin
L:=nil
cargarLista() {aca adentro see lee y se pasa como parametro el dato nuevo al agregar que corresponda (agregarAtras, adelante, al final, ordenado)}



end