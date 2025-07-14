unit Forms.FormBasica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  Logic.CalculadoraCore, Logic.MemoriaManager;

type
  TFormBasica = class(TForm)
    // Adicione aqui seus componentes e eventos
  private
  public
  end;

var
  FormBasica: TFormBasica;

implementation

uses
  Forms.FormCientifica; // ← Evita dependência circular

{$R *.lfm}

end.

