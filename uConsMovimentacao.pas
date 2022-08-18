unit uConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmConsMovimentacao = class(TForm)
    ds_consmov: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMovimentacao: TfrmConsMovimentacao;

implementation

{$R *.dfm}

uses uDmMovimentacao;

procedure TfrmConsMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(frmConsMovimentacao);

end;

end.
