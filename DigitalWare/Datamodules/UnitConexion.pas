unit UnitConexion;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TDataModuleConexion = class(TDataModule)
    DCOMConnection: TDCOMConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleConexion: TDataModuleConexion;

implementation

{$R *.dfm}

end.
