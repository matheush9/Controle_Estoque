unit uCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB;

type
  TfrmCadMovimentacao = class(TForm)
    ds_movimentacao: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

{$R *.dfm}

uses uDmMovimentacao, uDmMovProd;

procedure TfrmCadMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DmMovimentacao);
  FreeAndNil(frmCadMovimentacao);
end;

procedure TfrmCadMovimentacao.FormCreate(Sender: TObject);
begin
  if DmMovimentacao = nil then
  begin
    DmMovimentacao := TDmMovimentacao.Create(DmMovimentacao);
  end;
end;

end.
