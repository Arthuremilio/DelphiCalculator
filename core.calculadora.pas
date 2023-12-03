unit core.calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, math;

type
  TForm1 = class(TForm)
    BtnSomar: TButton;
    btnCalcular: TButton;
    EdtNumero1: TEdit;
    EdtNumero2: TEdit;
    Label1: TLabel;
    lblResultado: TLabel;
    btnSoma: TButton;
    btnSubtacao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    lblOperador: TLabel;
    procedure BtnSomarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtacaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
  private
    procedure somar;
    function calcular(numero1, numero2 : integer; operador: String): Double;
    procedure exibirResultado(resultado : Double);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  try
    try
      exibirResultado(calcular(StrToInt(edtNumero1.Text),StrtoInt(edtNumero2.Text), '+'));
    except
      on E: Exception do
      begin
        showMessage('Ocorreu um erro:' + E.Message);
        lblResultado.Caption := '0';
      end;
    end;
  finally

  end;
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
    exibirResultado(calcular(StrToInt(edtNumero1.Text),StrtoInt(edtNumero2.Text), '+'));
end;

procedure TForm1.BtnSomarClick(Sender: TObject);
begin
  somar;
end;

procedure TForm1.btnSubtacaoClick(Sender: TObject);
begin
  exibirResultado(calcular(StrToInt(edtNumero1.Text),StrtoInt(edtNumero2.Text), '-'));
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
   exibirResultado(calcular(StrToInt(edtNumero1.Text),StrtoInt(edtNumero2.Text), '/'));
end;

procedure TForm1.btnMultiplicacaoClick(Sender: TObject);
begin
  exibirResultado(calcular(StrToInt(edtNumero1.Text),StrtoInt(edtNumero2.Text), '*'));
end;

function TForm1.calcular(numero1, numero2: integer; operador: String): Double;
begin
  try
      result := 0;
     lblOperador.Caption := operador;
    if operador = '+' then
      Exit(numero1 + numero2);

    if operador = '-' then
      Exit(numero1 - numero2);

    if operador = '*' then
      Exit(numero1 * numero2);

    if operador = '/' then
    begin
      if numero2 = 0 then
        raise Exception.Create('O numero 2 não pode ser igual a 0');

      Exit(numero1 / numero2);
  end;
  except
    on E: Exception do
      ShowMessage(Format('Ocorreu um erro: %s ', [E.Message]));

  end;
end;

procedure TForm1.exibirResultado(resultado : Double);
begin
    lblResultado.Caption := resultado.ToString;

end;

procedure TForm1.somar;
var
  soma : Integer;
  resultado : String;
begin
  soma := 2+2 ;
  resultado := soma.ToString;
  showMessage(resultado);
end;

end.
