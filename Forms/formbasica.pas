unit formbasica;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Menus,
  calculadoracore, memoriamanager;

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
    procedure bt16_deltClick(Sender: TObject);
    procedure bt17_virgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnNumeroClick(Sender: TObject);
    procedure BtnOperadorClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    valorAtual: Double;
    operadorAtual: Char;
    novoNumero: Boolean;
    operadorEmEspera: Boolean;
    function LimparZerosEsquerda(const s: String): String;
  public
  end;

implementation

{$R *.lfm}

{ TFormBasica }

procedure TFormBasica.FormCreate(Sender: TObject);
begin
  edDisplay.Text := '0';
  valorAtual := 0;
  operadorAtual := #0;
  novoNumero := True;
  operadorEmEspera := False;
end;

// Remove zeros à esquerda, mantendo '0' para zero exato
function TFormBasica.LimparZerosEsquerda(const s: String): String;
var
  tmp: String;
begin
  tmp := s;
  while (Length(tmp) > 1) and (tmp[1] = '0') and (tmp[2] <> ',') do
    Delete(tmp, 1, 1);
  Result := tmp;
end;

procedure TFormBasica.bt16_deltClick(Sender: TObject);
begin
  // Apaga o último caractere do display
  if Length(edDisplay.Text) > 1 then
    edDisplay.Text := Copy(edDisplay.Text, 1, Length(edDisplay.Text) - 1)
  else
    edDisplay.Text := '0';

  // Garante que ao apagar tudo, novo número seja reconhecido
  novoNumero := False;
end;

procedure TFormBasica.bt17_virgClick(Sender: TObject);
begin
  // Adiciona vírgula apenas se ainda não tiver uma no número atual
  if Pos(',', edDisplay.Text) = 0 then
    edDisplay.Text := edDisplay.Text + ',';
  novoNumero := False;
end;

procedure TFormBasica.BtnNumeroClick(Sender: TObject);
var
  c: String;
begin
  c := (Sender as TButton).Caption;

  if novoNumero or (edDisplay.Text = '0') then
    edDisplay.Text := c
  else
    edDisplay.Text := edDisplay.Text + c;

  edDisplay.Text := LimparZerosEsquerda(edDisplay.Text);

  novoNumero := False;
  operadorEmEspera := False;
end;

procedure TFormBasica.BtnOperadorClick(Sender: TObject);
begin
  // Só muda o operador se não acabou de clicar outro operador
  if not operadorEmEspera then
  begin
    valorAtual := StrToFloat(edDisplay.Text);
    novoNumero := True;
  end;
  operadorAtual := (Sender as TButton).Caption[1]; // '+', '-', '*', '/'
  operadorEmEspera := True;
end;

procedure TFormBasica.BtnIgualClick(Sender: TObject);
var
  valorNovo, resultado: Double;
  textoResultado: String;
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

    textoResultado := FloatToStr(resultado);

    // Remover ,0 para inteiros
    if Pos(',', textoResultado) > 0 then
    begin
      while (Length(textoResultado) > 1) and ((textoResultado[Length(textoResultado)] = '0')) do
        Delete(textoResultado, Length(textoResultado), 1);
      if textoResultado[Length(textoResultado)] = ',' then
        Delete(textoResultado, Length(textoResultado), 1);
    end;

    edDisplay.Text := textoResultado;
    valorAtual := resultado;
    novoNumero := True;
    operadorEmEspera := False;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFormBasica.BtnLimparClick(Sender: TObject);
begin
  edDisplay.Text := '0';
  valorAtual := 0;
  operadorAtual := #0;
  novoNumero := True;
  operadorEmEspera := False;
end;

end.

