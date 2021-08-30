unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, UnitFibonacci, UnitSalario, UnitClientes;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure Panel3Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Panel3Click(Sender: TObject);
begin
  if not assigned (FormFibonacci) then
    Application.CreateForm(TFormFibonacci,FormFibonacci);
  FormFibonacci.Show;
end;

procedure TFrmPrincipal.Panel6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.Panel4Click(Sender: TObject);
begin
  if not assigned (FormSalario) then
    Application.CreateForm(TFormSalario,FormSalario);
  FormSalario.Show;
end;

procedure TFrmPrincipal.Panel5Click(Sender: TObject);
begin
  if not assigned (FormFactura) then
    Application.CreateForm(TFormFactura,FormFactura);
  FormFactura.Show;
end;

end.
