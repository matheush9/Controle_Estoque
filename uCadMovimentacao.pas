unit uCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB;

type
  TfrmCadMovimentacao = class(TForm)
    ds_movimentacao: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

{$R *.dfm}

procedure TfrmCadMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(frmCadMovimentacao);
end;

end.
