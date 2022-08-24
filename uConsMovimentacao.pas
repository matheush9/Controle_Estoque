unit uConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, uDmMovimentacao;

type
  TfrmConsMovimentacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    btn_consultar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    edit_dataInicial: TMaskEdit;
    edit_dataFinal: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    lb_totalMov: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_consultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMovimentacao: TfrmConsMovimentacao;
  DmMovimentacao: TDmMovimentacao;

implementation

{$R *.dfm}

uses uDmProdutos, uDmMovProd;

procedure TfrmConsMovimentacao.btn_consultarClick(Sender: TObject);
begin
  DmMovimentacao.sql_movprod.Active := true;
  DmMovimentacao.sql_movimentacao.Close;
  DmMovimentacao.sql_movimentacao.SQL.Clear;
  DmMovimentacao.sql_movimentacao.SQL.Text :=
    'SELECT * FROM MOVIMENTACAO WHERE CAST(DATA_HORA AS date) BETWEEN :pDataInicial AND :pDataFinal;';
  DmMovimentacao.sql_movimentacao.ParamByName('pDataInicial').Value :=
    FormatDateTime('yyyy-mm-dd', StrToDate(edit_dataInicial.Text));
  DmMovimentacao.sql_movimentacao.ParamByName('pDataFinal').Value :=
    FormatDateTime('yyyy-mm-dd', StrToDate(edit_dataFinal.Text));
  DmMovimentacao.sql_movimentacao.Open;
  lb_totalMov.Caption := inttostr(DmMovimentacao.sql_movimentacao.RecordCount);
end;

procedure TfrmConsMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DmMovimentacao);
  FreeAndNil(DmProdutos);
  Action := caFree;
end;

procedure TfrmConsMovimentacao.FormCreate(Sender: TObject);
begin
  DmMovimentacao := TDmMovimentacao.Create(Self);
  DmProdutos := TDmProdutos.Create(Self);
end;

end.
