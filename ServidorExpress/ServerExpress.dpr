program ServerExpress;

uses
  Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormExpress},
  ServerExpress_TLB in 'ServerExpress_TLB.pas',
  UnitServerExpress in 'UnitServerExpress.pas' {ServerExpressDCOM: TRemoteDataModule} {ServerExpressDCOM: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormExpress, FormExpress);
  Application.Run;
end.
