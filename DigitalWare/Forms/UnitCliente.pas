unit UnitCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UnitConexion, DB, DBClient, Grids, DBGrids,
  DBCtrls;

type
  TFormCliente = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DSCliente: TDataSource;
    ClientDataSetCliente: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSetClienteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCliente: TFormCliente;

implementation

{$R *.dfm}

procedure TFormCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormCliente.FormDestroy(Sender: TObject);
begin
  FormCliente := nil;
end;

procedure TFormCliente.FormCreate(Sender: TObject);
begin
  ClientDataSetCliente.Active := True;
end;

procedure TFormCliente.ClientDataSetClienteAfterPost(DataSet: TDataSet);
begin
  ClientDataSetCliente.ApplyUpdates(0);
end;

end.
