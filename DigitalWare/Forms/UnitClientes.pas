unit UnitClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, MConnect, Grids, DBGrids, ExtCtrls, DBCtrls,
  StdCtrls, UnitConexion, UnitCliente, UnitProducto;

type
  TFormFactura = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    ButtonClientes: TButton;
    ButtonProductos: TButton;
    GroupBox1: TGroupBox;
    EditEmpleado: TEdit;
    ButtonBuscar: TButton;
    Label2: TLabel;
    LabelFecha: TLabel;
    ClientDataSetDatosCliente: TClientDataSet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    EditNombre: TEdit;
    Label4: TLabel;
    EditDireccion: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    EditCodigoProducto: TEdit;
    EditNombreProducto: TEdit;
    EditValorProducto: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditCantidadProducto: TEdit;
    ButtonAdicionar: TButton;
    ClientDataSetDetalleFactura: TClientDataSet;
    ClientDataSetProducto: TClientDataSet;
    DataSourceDetalleFactura: TDataSource;
    DBGridDetalle: TDBGrid;
    ClientDataSetCabezaFactura: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonClientesClick(Sender: TObject);
    procedure ButtonProductosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonBuscarClick(Sender: TObject);
    procedure EditEmpleadoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoProductoExit(Sender: TObject);
    procedure EditCodigoProductoKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    procedure consultarDatosCliente();
    procedure consultarProducto();
    procedure validarObligatorios();
  public
    { Public declarations }
  end;

var
  FormFactura: TFormFactura;

implementation

{$R *.dfm}

procedure TFormFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormFactura.FormDestroy(Sender: TObject);
begin
  FormFactura := nil;
end;

procedure TFormFactura.ButtonClientesClick(Sender: TObject);
begin
  if not assigned (FormCliente) then
    Application.CreateForm(TFormCliente,FormCliente);
  FormCliente.Show;
end;

procedure TFormFactura.ButtonProductosClick(Sender: TObject);
begin
  if not assigned (FormProducto) then
    Application.CreateForm(TFormProducto,FormProducto);
  FormProducto.Show;
end;

procedure TFormFactura.FormCreate(Sender: TObject);
begin
  LabelFecha.Caption := DateToStr(now);
end;

procedure TFormFactura.consultarDatosCliente;
begin
  ClientDataSetDatosCliente.Open;
  ClientDataSetDatosCliente.Filtered := False;
  ClientDataSetDatosCliente.Filter :=  'cliente = '+EditEmpleado.Text;
  ClientDataSetDatosCliente.Filtered := True;
  if (ClientDataSetDatosCliente.fieldbyname('cliente').AsString = '')then
    ShowMessage('No se encontró cliente!!!');
  EditNombre.Text := ClientDataSetDatosCliente.fieldbyname('nombre_cliente').AsString;
  EditDireccion.Text := ClientDataSetDatosCliente.fieldbyname('direccion').AsString;
end;

procedure TFormFactura.ButtonBuscarClick(Sender: TObject);
begin
  consultarDatosCliente;
end;

procedure TFormFactura.EditEmpleadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#8,'0'..'9']) then key:=#0;
end;

procedure TFormFactura.consultarProducto;
begin
  ClientDataSetProducto.Open;
  ClientDataSetProducto.Filtered := False;
  ClientDataSetProducto.Filter :=  'producto = '+EditCodigoProducto.Text;
  ClientDataSetProducto.Filtered := True;
  if (ClientDataSetProducto.fieldbyname('producto').AsString = '')then
    ShowMessage('No se encontró producto!!!');
  EditCodigoProducto.Text := ClientDataSetProducto.fieldbyname('producto').AsString;
  EditNombreProducto.Text := ClientDataSetProducto.fieldbyname('nombre_producto').AsString;
  EditValorProducto.Text := ClientDataSetProducto.fieldbyname('valor').AsString; 
end;

procedure TFormFactura.EditCodigoProductoExit(Sender: TObject);
begin
  consultarProducto;
end;

procedure TFormFactura.EditCodigoProductoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#8,'0'..'9']) then key:=#0;
end;

procedure TFormFactura.validarObligatorios;
begin
  if (EditCodigoProducto.Text = '') Then
  begin
   raise Exception.Create('Ingrese el codigo del producto');
   EditCodigoProducto.SetFocus;
  end;
  if (EditCantidadProducto.Text = '') Then
  begin
   raise Exception.Create('Ingrese la cantidad correspondiente');
   EditCantidadProducto.SetFocus;
  end;
end;

procedure TFormFactura.ButtonAdicionarClick(Sender: TObject);
begin
  validarObligatorios;
  ClientDataSetCabezaFactura.Open;
  ClientDataSetCabezaFactura.Insert;
  ClientDataSetCabezaFactura.fieldbyname('fecha').AsString := LabelFecha.Caption;
  ClientDataSetCabezaFactura.fieldbyname('cliente').AsString := EditEmpleado.Text;
  ClientDataSetCabezaFactura.Post;
  ClientDataSetCabezaFactura.ApplyUpdates(0);
  ClientDataSetCabezaFactura.Open;
  ClientDataSetCabezaFactura.Last;
  ClientDataSetDetalleFactura.Open;
  ClientDataSetDetalleFactura.Insert;
  ClientDataSetDetalleFactura.fieldbyname('numero').AsString := ClientDataSetCabezaFactura.fieldbyname('numero').AsString ;
  ClientDataSetDetalleFactura.fieldbyname('producto').AsString := EditCodigoProducto.Text;
  ClientDataSetDetalleFactura.fieldbyname('cantidad').AsString := EditCantidadProducto.Text;
  ClientDataSetDetalleFactura.fieldbyname('valor').AsString := EditValorProducto.Text;
  ClientDataSetDetalleFactura.Post;
  ClientDataSetDetalleFactura.ApplyUpdates(0);
  ClientDataSetDetalleFactura.Open;
end;

end.
