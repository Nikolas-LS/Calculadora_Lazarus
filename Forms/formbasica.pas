unit Forms.FormBasica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Menus,
  Logic.CalculadoraCore, Logic.MemoriaManager;

type

  { TFormBasica }

  TFormBasica = class(TForm)
    // Adicione aqui seus componentes e eventos
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
    procedure FormCreate(Sender: TObject);
    procedure BtnNumeroClick(Sender: TObject);
    procedure BtnOperadorClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    valorAtual: Double;
    operadorAtual: Char;
    novoNumero: Boolean;
  public
  end;

var
  FormBasica: TFormBasica;

implementation

uses
  Forms.FormCientifica; // ← Evita dependência circular
  Logic.CalculadoraCore;

{$R *.lfm}

{ TFormBasica }

procedure TFormBasica.FormCreate(Sender: TObject);
begin
  edDisplay.Text := '0';
  valorAtual := 0;
  operadorAtual := #0;
  novoNumero := True;
end;

procedure TFormBasica.BtnNumeroClick(Sender: TObject);
begin
    if novoNumero then
       edDisplay.Text := (Sender as TButton).Caption;
    else
       edDisplay.Text := edDisplay.Text + (Sender as TButton).Caption;
    novoNumero = False;
end;

procedure TFormBasica.BtnOperadorClick(Sender: TObject);
begin
    valorAtual := StrToFloat(edDisplay.Text);
    operadorAtual := (Sender as TButton).Caption[1]; // '+', '-', '*', '/'
    novoNumero = True;
end;

procedure TFormBasica.BtnIgualClick(Sender: TObject);
var valorNovo, resultado: Double;
begin
    valorNovo := StrToFloat(edDisplay.Text);
    try
      case operadorAtual of
        '+': resultado := Somar(valorAtual, valorNovo);
        '-': resultado := Subtrair(valorAtual, valorNovo);
        '*': resultado := Multiplicar(valorAtual, valorNovo);
        '/': resultado := Dividir(valorAtual, valorNovo);
      else
        resultado := valorNovo;
      end;

      edDisplay.Text := FloatToStr(resultado);
      valorAtual := resultado;
      novoNumero := True;
    except
      on E: Exception do
         ShowMessage(E.Message);
    end;
end;

procedure TFormBasica.BtnLimparClick(Sender: TObject);
begin
    edDisplay.Text := '0';
    valorAtual := '0';
    operadorAtual := #0;
    novoNumero := True;
end;

end.

