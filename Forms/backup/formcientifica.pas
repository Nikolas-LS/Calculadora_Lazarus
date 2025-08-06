unit formcientifica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  calculadoracore, memoriamanager;

type
  TFormCientifica = class(TForm)
    // Adicione aqui seus componentes e eventos
  private
  public
  end;

implementation

uses
  Forms.FormBasica; // ← Evita dependência circular

{$R *.lfm}

end.

