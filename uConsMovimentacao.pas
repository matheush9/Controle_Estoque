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

end.
