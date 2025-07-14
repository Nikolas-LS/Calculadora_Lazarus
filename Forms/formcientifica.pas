unit Forms.FormCientifica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  Logic.CalculadoraCore, Logic.MemoriaManager;

type
  TFormCientifica = class(TForm)
    // Adicione aqui seus componentes e eventos
  private
  public
  end;

var
  FormCientifica: TFormCientifica;

implementation

uses
  Forms.FormBasica; // ← Evita dependência circular

{$R *.lfm}

end.

