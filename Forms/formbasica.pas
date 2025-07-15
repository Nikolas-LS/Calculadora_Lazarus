unit Forms.FormBasica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Menus,
  Logic.CalculadoraCore, Logic.MemoriaManager;

type

  { TFormBasica }

  TFormBasica = class(TForm)
    bt16_delt: TButton;
    bt17_virg: TButton;
    bt_basica_cientifica: TButton;
    bt1_num7: TButton;
    bt10_num0: TButton;
    bt2_num4: TButton;
    bt3_num1: TButton;
    bt4_num8: TButton;
    bt5_num5: TButton;
    bt6_num2: TButton;
    bt7_num9: TButton;
    bt8_num6: TButton;
    bt9_num3: TButton;
    bt11_divisao: TButton;
    bt12_multi: TButton;
    bt13_sub: TButton;
    bt14_soma: TButton;
    bt15_result: TButton;
    edDisplay: TEdit;
    lbl_titulo_basico: TLabel;
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

{ TFormBasica }

end.

