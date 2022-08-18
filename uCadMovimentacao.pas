unit uCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB;

type
  TfrmCadMovimentacao = class(TForm)
    ds_movimentacao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

{$R *.dfm}

end.
