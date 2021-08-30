object FormProducto: TFormProducto
  Left = 497
  Top = 339
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registrar Producto'
  ClientHeight = 303
  ClientWidth = 608
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 57
    Align = alTop
    Color = clHighlight
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 16
      Width = 177
      Height = 25
      Caption = 'Registrar producto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 57
    Width = 608
    Height = 40
    DataSource = DSProducto
    Align = alTop
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 608
    Height = 206
    Align = alClient
    DataSource = DSProducto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderClientes'
    Left = 768
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 824
    Top = 152
  end
  object DSProducto: TDataSource
    DataSet = ClientDataSetProducto
    Left = 488
    Top = 16
  end
  object ClientDataSetProducto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderProductos'
    RemoteServer = DataModuleConexion.DCOMConnection
    AfterPost = ClientDataSetProductoAfterPost
    Left = 544
    Top = 16
  end
end
