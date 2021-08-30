object FormSalario: TFormSalario
  Left = 398
  Top = 276
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
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
      Left = 168
      Top = 16
      Width = 255
      Height = 25
      Caption = '2. Calculo salario semanal'
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
    Caption = ' Ingrese el nombre del empleado '
    TabOrder = 1
    object EditEmpleado: TEdit
      Left = 16
      Top = 24
      Width = 257
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 312
    Top = 81
    Width = 289
    Height = 57
    Caption = '  Ingrese el n'#250'mero de horas trabajadas  '
    TabOrder = 2
    object EditHoras: TEdit
      Left = 16
      Top = 24
      Width = 257
      Height = 21
      TabOrder = 0
      OnKeyPress = EditHorasKeyPress
    end
  end
  object ButtonCalcularSalario: TButton
    Left = 8
    Top = 144
    Width = 593
    Height = 41
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = ButtonCalcularSalarioClick
  end
end
