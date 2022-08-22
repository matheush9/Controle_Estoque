unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TfrmCadProduto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    dbEdit_data: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
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
  FreeAndNil(DmProdutos);
  frmCadProduto := nil;
  Action := CaFree;
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  if DmProdutos = nil then
  begin
    DmProdutos := TDmProdutos.Create(DmProdutos);
  end;
end;

end.
