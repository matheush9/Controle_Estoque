unit uConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsMovimentacao = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMovimentacao: TfrmConsMovimentacao;

implementation

{$R *.dfm}

uses uDmMovimentacao, uDmMovProd;

procedure TfrmConsMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DmMovimentacao);
  frmConsMovimentacao := nil;
  Action := CaFree;
end;

procedure TfrmConsMovimentacao.FormCreate(Sender: TObject);
begin
  if DmMovimentacao = nil then
  begin
    DmMovimentacao := TDmMovimentacao.Create(DmMovimentacao);
  end;
end;

end.
