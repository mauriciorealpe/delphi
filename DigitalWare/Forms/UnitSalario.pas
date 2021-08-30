unit UnitSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormSalario = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    EditEmpleado: TEdit;
    GroupBox2: TGroupBox;
    EditHoras: TEdit;
    ButtonCalcularSalario: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EditHorasKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonCalcularSalarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSalario: TFormSalario;

implementation

uses UnitUtilidades;

{$R *.dfm}

procedure TFormSalario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormSalario.FormDestroy(Sender: TObject);
begin
  FormSalario := nil;
end;

procedure TFormSalario.EditHorasKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#8,'0'..'9']) then key:=#0;
end;

procedure TFormSalario.ButtonCalcularSalarioClick(Sender: TObject);
begin
  ShowMessage(CalcularSalario(EditEmpleado.Text,StrToInt(EditHoras.Text)));
end;

end.
