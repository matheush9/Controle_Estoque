unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB;

type
  TfrmCadProduto = class(TForm)
    ds_produto: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses uDmProdutos;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmCadProduto)
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  if DmProdutos = nil then
  begin
    DmProdutos := TDmProdutos.Create(DmProdutos);
  end;
end;

end.
