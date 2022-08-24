unit uDmMovimentacao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDmPrincipal, uDmMovProd, uDmProdutos;

type
  TDmMovimentacao = class(TDataModule)
    tb_movimentacao: TFDTable;
    sql_movimentacao: TFDQuery;
    tb_movimentacaoTIPO: TStringField;
    tb_movimentacaoDATA_HORA: TSQLTimeStampField;
    tb_movimentacaoOBSERVACAO: TMemoField;
    tb_movimentacaoRESPONSAVEL: TStringField;
    tb_movimentacaoMOVIMENTACAO_ID: TIntegerField;
    ds_movimentacao: TDataSource;
    ds_sql_movimentacao: TDataSource;
    sql_movprod: TFDQuery;
    ds_sql_movprod: TDataSource;
    sql_movprodMV_PR_ID: TIntegerField;
    sql_movprodMOVIMENTACAO_ID: TIntegerField;
    sql_movprodPRODUTO_ID: TIntegerField;
    sql_movprodQUANTIDADE: TIntegerField;
    sql_movprodNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    DmMovProd: TDmMovProd;
  public
    { Public declarations }
  end;

var
  DmMovimentacao: TDmMovimentacao;
  //DmMovProd: TDmMovProd;
  DmProdutos: TDmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmMovimentacao.DataModuleCreate(Sender: TObject);
begin
  DmMovProd := TDmMovProd.Create(nil);
  tb_movimentacao.Active := true;
end;

end.
