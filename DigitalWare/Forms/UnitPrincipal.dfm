object FrmPrincipal: TFrmPrincipal
  Left = 192
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRUEBA DESARROLLO DELPHI- SEVEN'
  ClientHeight = 644
  ClientWidth = 1297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 644
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 1281
      Height = 57
      Color = clHighlight
      TabOrder = 0
      object Label1: TLabel
        Left = 440
        Top = 16
        Width = 413
        Height = 25
        Caption = 'PRUEBA DESARROLLO DELPHI - SEVEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 416
      Top = 128
      Width = 473
      Height = 65
      Cursor = crHandPoint
      BorderWidth = 2
      BorderStyle = bsSingle
      Caption = '1. Serie Fibonacci'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 416
      Top = 208
      Width = 473
      Height = 65
      Cursor = crHandPoint
      BorderWidth = 2
      BorderStyle = bsSingle
      Caption = '2. Calculo salario semanal'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 416
      Top = 288
      Width = 473
      Height = 65
      Cursor = crHandPoint
      BorderWidth = 2
      BorderStyle = bsSingle
      Caption = '3. CRUD clientes'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Panel5Click
    end
    object Panel6: TPanel
      Left = 416
      Top = 368
      Width = 473
      Height = 65
      Cursor = crHandPoint
      BorderWidth = 2
      BorderStyle = bsSingle
      Caption = 'SALIR'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Panel6Click
    end
  end
end
