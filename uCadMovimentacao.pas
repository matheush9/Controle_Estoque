unit uCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TfrmCadMovimentacao = class(TForm)
    ds_movimentacao: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbEdit_dataHora: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBC_tipo: TDBComboBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    ds_movprod: TDataSource;
    ds_produtos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

{$R *.dfm}

uses uDmMovimentacao, uDmMovProd, uDmProdutos;

procedure TfrmCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
  begin
    DmMovimentacao.tb_movimentacao.FieldByName('DATA_HORA').Value := Now;
  end;
end;

procedure TfrmCadMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DmMovimentacao);
  frmCadMovimentacao := nil;
  Action := CaFree;
end;

procedure TfrmCadMovimentacao.FormCreate(Sender: TObject);
begin
  if DmMovimentacao = nil then
  begin
    DmMovimentacao := TDmMovimentacao.Create(DmMovimentacao);
  end;
end;

end.
