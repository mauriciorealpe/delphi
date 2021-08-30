object FormFibonacci: TFormFibonacci
  Left = 562
  Top = 238
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FormFibonacci'
  ClientHeight = 192
  ClientWidth = 610
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 593
    Height = 57
    Color = clHighlight
    TabOrder = 0
    object Label1: TLabel
      Left = 208
      Top = 16
      Width = 175
      Height = 25
      Caption = '1. Serie Fibonacci'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 289
    Height = 57
    Caption = 'Ingrese un n'#250'mero entre 1 y 20'
    TabOrder = 1
    object EditNumero: TEdit
      Left = 16
      Top = 24
      Width = 257
      Height = 21
      TabOrder = 0
      OnKeyPress = EditNumeroKeyPress
    end
  end
  object ButtonCalcularSerie: TButton
    Left = 304
    Top = 88
    Width = 297
    Height = 41
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = ButtonCalcularSerieClick
  end
  object EditSerieFibonacci: TEdit
    Left = 8
    Top = 152
    Width = 593
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
end
