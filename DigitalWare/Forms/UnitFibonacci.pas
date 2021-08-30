unit UnitFibonacci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormFibonacci = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    EditNumero: TEdit;
    ButtonCalcularSerie: TButton;
    EditSerieFibonacci: TEdit;
    procedure EditNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonCalcularSerieClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFibonacci: TFormFibonacci;

implementation

uses UnitUtilidades;

{$R *.dfm}

procedure TFormFibonacci.EditNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#8,'0'..'9']) then key:=#0;
end;

procedure TFormFibonacci.ButtonCalcularSerieClick(Sender: TObject);
var numero:integer;
begin
  numero := StrToInt(EditNumero.Text);
  if(ValidarRango(1,20,numero))then
    EditSerieFibonacci.Text := SerieFibonacci(numero);
end;

procedure TFormFibonacci.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormFibonacci.FormDestroy(Sender: TObject);
begin
  FormFibonacci := nil;
end;

end.
