program Calculadora;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  Forms.FormBasica,
  Forms.FormCientifica,
  Logic.CalculadoraCore,
  Logic.MemoriaManager;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  {$PUSH}{$WARN 5044 OFF}
  Application.MainFormOnTaskbar := True;
  {$POP}
  Application.Initialize;
  Application.CreateForm(TFormBasica, FormBasica);
  Application.CreateForm(TFormCientifica, FormCientifica);
  Application.Run;
end.

