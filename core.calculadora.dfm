object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblOperador: TLabel
    Left = 137
    Top = 153
    Width = 16
    Height = 31
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 287
    Top = 155
    Width = 16
    Height = 31
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 309
    Top = 158
    Width = 39
    Height = 28
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnSomar: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Somar 2 + 2 '
    TabOrder = 0
    OnClick = BtnSomarClick
  end
  object btnCalcular: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Calcular'
    DisabledImageName = 'btnCalcular'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object EdtNumero1: TEdit
    Left = 8
    Top = 161
    Width = 121
    Height = 23
    ImeName = 'edtNumero1'
    TabOrder = 2
  end
  object EdtNumero2: TEdit
    Left = 160
    Top = 161
    Width = 121
    Height = 23
    ImeName = 'edtNumero2'
    TabOrder = 3
  end
  object btnSoma: TButton
    Left = 8
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Soma'
    DisabledImageName = 'btnSoma'
    TabOrder = 4
    OnClick = btnSomaClick
  end
  object btnSubtacao: TButton
    Left = 98
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Subta'#231#227'o'
    TabOrder = 5
    OnClick = btnSubtacaoClick
  end
  object btnMultiplicacao: TButton
    Left = 184
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Multiplica'#231#227'o'
    DisabledImageName = 'btnMultiplicacao'
    TabOrder = 6
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 273
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Divis'#227'o'
    DisabledImageName = 'btnDivisao'
    TabOrder = 7
    OnClick = btnDivisaoClick
  end
end
