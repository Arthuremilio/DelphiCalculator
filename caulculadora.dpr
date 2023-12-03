program caulculadora;

uses
  Vcl.Forms,
  core.calculadora in 'core.calculadora.pas' {Form1},
  frmCalculadora in 'frmCalculadora.pas' {FrmCalculuadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmCalculuadora, FrmCalculuadora);
  Application.Run;
end.
