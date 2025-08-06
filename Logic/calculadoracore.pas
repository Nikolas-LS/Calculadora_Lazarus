unit calculadoracore;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

function Somar (a, b: Double): Double;
function Subtrair (a, b: Double): Double;
function Multiplicar (a, b: Double): Double;
function Dividir (a, b: Double): Double;

implementation

function Somar (a, b: Double): Double;
begin
  Result := a + b;
end;

function Subtrair (a, b: Double): Double;
begin
  Result := a - b;
end;

function Multiplicar (a, b: Double): Double;
begin
   Result := a * b;
end;

function Dividir (a, b: Double): Double;
begin
   if b = 0 then
      raise Exception.Create('Erro: divisão por zero');
   Result := a / b;
end;

end.

