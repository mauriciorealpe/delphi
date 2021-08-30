object ServerExpressDCOM: TServerExpressDCOM
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 460
  Width = 607
  object SQLConnection: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\DIGITALWARE.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=zitiz'
      'ServerCharSet='
      'SQLDialect=1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=True'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 40
    Top = 32
  end
  object SQLTableClientes: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection
    TableName = 'CLIENTES'
    Left = 56
    Top = 144
    object SQLTableClientesCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object SQLTableClientesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 50
    end
    object SQLTableClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
  end
  object DataSetProviderClientes: TDataSetProvider
    DataSet = SQLTableClientes
    Left = 56
    Top = 224
  end
  object SQLTableProductos: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection
    TableName = 'PRODUCTOS'
    Left = 200
    Top = 152
    object SQLTableProductosPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Required = True
    end
    object SQLTableProductosNOMBRE_PRODUCTO: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 100
    end
    object SQLTableProductosVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object DataSetProviderProductos: TDataSetProvider
    DataSet = SQLTableProductos
    Left = 200
    Top = 216
  end
  object SQLTableCabezaFactura: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection
    TableName = 'CABEZA_FACTURA'
    Left = 344
    Top = 160
    object SQLTableCabezaFacturaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SQLTableCabezaFacturaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object SQLTableCabezaFacturaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object SQLTableCabezaFacturaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DataSetProviderCabezaFactura: TDataSetProvider
    DataSet = SQLTableCabezaFactura
    Left = 352
    Top = 232
  end
  object SQLTableDetalleFactura: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection
    TableName = 'DETALLE_FACTURA'
    Left = 520
    Top = 168
    object SQLTableDetalleFacturaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object SQLTableDetalleFacturaPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Required = True
    end
    object SQLTableDetalleFacturaCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object SQLTableDetalleFacturaVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object DataSetProviderDetalleFactura: TDataSetProvider
    DataSet = SQLTableDetalleFactura
    Left = 520
    Top = 224
  end
end
