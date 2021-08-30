unit UnitUtilidades;

interface

function ValidarRango(min,max,value:Integer) : Boolean;
function SerieFibonacci(value:Integer) : String;
function CalcularSalario(nombre:String;value:Integer) : String; 

implementation

uses SysUtils;

function ValidarRango(min,max,value:Integer) : Boolean;
begin
  if not((value>=min)and(value<=max))then
    raise Exception.Create('Debe ingresar un valor entre: '+IntToStr(min)+' - '+IntToStr(max));
  Result := True;
end;

function SerieFibonacci(value:Integer) : String;
var i:integer;
    cadena,ultimacoma: String;
    function calcularSerie(numero:Integer) : Integer;
    begin
      if(numero < 2)then
        Result := 1
      else
        Result := calcularSerie(numero - 1) + calcularSerie(numero - 2);
    end;
begin
  for i := 0 to value - 1 do
  begin
    cadena := cadena + IntToStr(calcularSerie(i)) + ',';
  end;
  delete(cadena,length(cadena),1);
  Result := cadena;
end;

function CalcularSalario(nombre:String;value:Integer) : String;
const valorHora = 15000;
      valorHoraExtra = 19000;
      horaNormal = 35;
var pago : Integer;
begin
  if (value <= horaNormal) then
    pago := value * valorHora
  else
    pago := (valorHora * 35)+(valorHoraExtra * (value - horaNormal));
  Result := Format('Al empleado %s se le debe pagar la suma de %d pesos.', [nombre,pago]);
end;

end.
