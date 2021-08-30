unit UnitProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UnitConexion, DB, DBClient, Grids, DBGrids,
  DBCtrls;

type
  TFormProducto = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DSProducto: TDataSource;
    ClientDataSetProducto: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSetProductoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProducto: TFormProducto;

implementation

{$R *.dfm}

procedure TFormProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormProducto.FormDestroy(Sender: TObject);
begin
  FormProducto := nil;
end;

procedure TFormProducto.FormCreate(Sender: TObject);
begin
  ClientDataSetProducto.Active := True;
end;

procedure TFormProducto.ClientDataSetProductoAfterPost(DataSet: TDataSet);
begin
  ClientDataSetProducto.ApplyUpdates(0);
end;

end.
