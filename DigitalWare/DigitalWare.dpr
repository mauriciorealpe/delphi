program DigitalWare;

uses
  Forms,
  UnitPrincipal in 'Forms\UnitPrincipal.pas' {FrmPrincipal},
  UnitFibonacci in 'Forms\UnitFibonacci.pas' {FormFibonacci},
  UnitUtilidades in 'Units\UnitUtilidades.pas',
  UnitSalario in 'Forms\UnitSalario.pas' {FormSalario},
  UnitClientes in 'Forms\UnitClientes.pas' {FormFactura},
  UnitCliente in 'Forms\UnitCliente.pas' {FormCliente},
  UnitConexion in 'Datamodules\UnitConexion.pas' {DataModuleConexion: TDataModule},
  UnitProducto in 'Forms\UnitProducto.pas' {FormProducto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModuleConexion, DataModuleConexion);
  Application.Run;
end.
