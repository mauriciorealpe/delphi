object FormFactura: TFormFactura
  Left = 169
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form Factura'
  ClientHeight = 609
  ClientWidth = 1051
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
  object Label2: TLabel
    Left = 803
    Top = 88
    Width = 71
    Height = 20
    Caption = 'FECHA: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelFecha: TLabel
    Left = 875
    Top = 88
    Width = 71
    Height = 20
    Caption = 'FECHA: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 11
    Top = 8
    Width = 1030
    Height = 57
    Color = clHighlight
    TabOrder = 0
    object Label1: TLabel
      Left = 449
      Top = 16
      Width = 127
      Height = 25
      Caption = '3. FACTURA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ButtonClientes: TButton
    Left = 16
    Top = 80
    Width = 129
    Height = 41
    Caption = 'Clientes'
    TabOrder = 1
    OnClick = ButtonClientesClick
  end
  object ButtonProductos: TButton
    Left = 152
    Top = 80
    Width = 121
    Height = 41
    Caption = 'Productos'
    TabOrder = 2
    OnClick = ButtonProductosClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 136
    Width = 265
    Height = 57
    Caption = ' Ingrese ID cliente '
    TabOrder = 3
    object EditEmpleado: TEdit
      Left = 16
      Top = 24
      Width = 233
      Height = 21
      TabOrder = 0
      OnKeyPress = EditEmpleadoKeyPress
    end
  end
  object ButtonBuscar: TButton
    Left = 280
    Top = 144
    Width = 75
    Height = 49
    Caption = 'Buscar'
    TabOrder = 4
    OnClick = ButtonBuscarClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 208
    Width = 1033
    Height = 41
    TabOrder = 5
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 50
      Height = 13
      Caption = 'NOMBRE:'
    end
    object Label4: TLabel
      Left = 480
      Top = 16
      Width = 65
      Height = 13
      Caption = 'DIRECCION: '
    end
    object EditNombre: TEdit
      Left = 72
      Top = 11
      Width = 377
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object EditDireccion: TEdit
      Left = 545
      Top = 11
      Width = 378
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 264
    Width = 1033
    Height = 41
    Caption = ' Producto '
    TabOrder = 6
    object Label5: TLabel
      Left = 16
      Top = 16
      Width = 45
      Height = 13
      Caption = 'CODIGO:'
    end
    object Label6: TLabel
      Left = 184
      Top = 16
      Width = 53
      Height = 13
      Caption = 'NOMBRE: '
    end
    object Label7: TLabel
      Left = 648
      Top = 16
      Width = 42
      Height = 13
      Caption = 'VALOR: '
    end
    object Label8: TLabel
      Left = 864
      Top = 16
      Width = 58
      Height = 13
      Caption = 'CANTIDAD:'
    end
    object EditCodigoProducto: TEdit
      Left = 63
      Top = 11
      Width = 90
      Height = 21
      TabOrder = 0
      OnExit = EditCodigoProductoExit
      OnKeyPress = EditCodigoProductoKeyPress
    end
    object EditNombreProducto: TEdit
      Left = 238
      Top = 11
      Width = 378
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object EditValorProducto: TEdit
      Left = 691
      Top = 11
      Width = 118
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object EditCantidadProducto: TEdit
      Left = 923
      Top = 11
      Width = 91
      Height = 21
      TabOrder = 3
    end
  end
  object ButtonAdicionar: TButton
    Left = 8
    Top = 312
    Width = 1033
    Height = 41
    Caption = 'Adicionar'
    TabOrder = 7
    OnClick = ButtonAdicionarClick
  end
  object DBGridDetalle: TDBGrid
    Left = 8
    Top = 360
    Width = 1033
    Height = 120
    DataSource = DataSourceDetalleFactura
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ClientDataSetDatosCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInputOutput
      end>
    ProviderName = 'DataSetProviderClientes'
    RemoteServer = DataModuleConexion.DCOMConnection
    Left = 763
    Top = 144
  end
  object ClientDataSetDetalleFactura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderDetalleFactura'
    RemoteServer = DataModuleConexion.DCOMConnection
    Left = 880
    Top = 144
  end
  object ClientDataSetProducto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderProductos'
    RemoteServer = DataModuleConexion.DCOMConnection
    Left = 824
    Top = 144
  end
  object DataSourceDetalleFactura: TDataSource
    DataSet = ClientDataSetDetalleFactura
    Left = 880
    Top = 176
  end
  object ClientDataSetCabezaFactura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderCabezaFactura'
    RemoteServer = DataModuleConexion.DCOMConnection
    Left = 936
    Top = 144
  end
end
