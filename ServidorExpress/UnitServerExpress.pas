unit UnitServerExpress;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ServerExpress_TLB, StdVcl, DBXpress, DB, SqlExpr, FMTBcd,
  Provider;

type
  TServerExpressDCOM = class(TRemoteDataModule, IServerExpressDCOM)
    SQLConnection: TSQLConnection;
    SQLTableClientes: TSQLTable;
    DataSetProviderClientes: TDataSetProvider;
    SQLTableClientesCLIENTE: TIntegerField;
    SQLTableClientesNOMBRE_CLIENTE: TStringField;
    SQLTableClientesDIRECCION: TStringField;
    SQLTableProductos: TSQLTable;
    DataSetProviderProductos: TDataSetProvider;
    SQLTableProductosPRODUCTO: TIntegerField;
    SQLTableProductosNOMBRE_PRODUCTO: TStringField;
    SQLTableProductosVALOR: TFloatField;
    SQLTableCabezaFactura: TSQLTable;
    SQLTableCabezaFacturaNUMERO: TIntegerField;
    SQLTableCabezaFacturaFECHA: TSQLTimeStampField;
    SQLTableCabezaFacturaCLIENTE: TIntegerField;
    SQLTableCabezaFacturaTOTAL: TFloatField;
    DataSetProviderCabezaFactura: TDataSetProvider;
    SQLTableDetalleFactura: TSQLTable;
    DataSetProviderDetalleFactura: TDataSetProvider;
    SQLTableDetalleFacturaNUMERO: TIntegerField;
    SQLTableDetalleFacturaPRODUCTO: TIntegerField;
    SQLTableDetalleFacturaCANTIDAD: TIntegerField;
    SQLTableDetalleFacturaVALOR: TFloatField;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TServerExpressDCOM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TServerExpressDCOM,
    Class_ServerExpressDCOM, ciMultiInstance, tmApartment);
end.
