unit uDmMovProd;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, VCL.Dialogs;

type
  TDmMovProd = class(TDataModule)
    tb_movprod: TFDTable;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    tb_movprodMV_PR_ID: TIntegerField;
    tb_movprodMOVIMENTACAO_ID: TIntegerField;
    tb_movprodQUANTIDADE: TIntegerField;
    tb_movprodPRODUTO_ID: TIntegerField;
    ds_movprod: TDataSource;
    tb_movprodSomaQuantidade: TAggregateField;
    tb_movprodnomeProduto: TStringField;
    procedure tb_movprodAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tb_movprodBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMovProd: TDmMovProd;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmPrincipal, uDmMovimentacao, uDmProdutos, uCadMovimentacao;

{$R *.dfm}

procedure TDmMovProd.DataModuleCreate(Sender: TObject);
begin
  tb_movprod.Active := true;

end;

procedure TDmMovProd.tb_movprodAfterPost(DataSet: TDataSet);
begin
  // Aumenta ou diminui o estoque
  if (DmMovimentacao.tb_movimentacao.FieldByName('TIPO')
    .Value = 'Saida do Estoque') then
  begin
    sqlDiminuiEstoque.Active := true;
    sqlDiminuiEstoque.ParamByName('prodID').Value :=
      tb_movprod.FieldByName('PRODUTO_ID').Value;
    sqlDiminuiEstoque.ParamByName('prodQtd').Value :=
      tb_movprod.FieldByName('QUANTIDADE').Value;
    sqlDiminuiEstoque.Execute();
    sqlDiminuiEstoque.Active := false;
  end;

  if (DmMovimentacao.tb_movimentacao.FieldByName('TIPO')
    .Value = 'Entrada no Estoque') then
  begin
    sqlAumentaEstoque.Active := true;
    sqlAumentaEstoque.ParamByName('prodID').Value :=
      tb_movprod.FieldByName('PRODUTO_ID').Value;
    sqlAumentaEstoque.ParamByName('prodQtd').Value :=
      tb_movprod.FieldByName('QUANTIDADE').Value;
    sqlAumentaEstoque.Execute();
    sqlAumentaEstoque.Active := false;
  end;
end;

procedure TDmMovProd.tb_movprodBeforeDelete(DataSet: TDataSet);
begin
  // Aumenta ou diminui o estoque
  if (DmMovimentacao.tb_movimentacao.FieldByName('TIPO')
    .Value = 'Entrada no Estoque') then
  begin
    sqlDiminuiEstoque.Active := true;
    sqlDiminuiEstoque.ParamByName('prodID').Value :=
      tb_movprod.FieldByName('PRODUTO_ID').Value;
    sqlDiminuiEstoque.ParamByName('prodQtd').Value :=
      tb_movprod.FieldByName('QUANTIDADE').Value;
    sqlDiminuiEstoque.Execute();
    sqlDiminuiEstoque.Active := false;
  end;

  if (DmMovimentacao.tb_movimentacao.FieldByName('TIPO')
    .Value = 'Saida do Estoque') then
  begin
    sqlAumentaEstoque.Active := true;
    sqlAumentaEstoque.ParamByName('prodID').Value :=
      tb_movprod.FieldByName('PRODUTO_ID').Value;
    sqlAumentaEstoque.ParamByName('prodQtd').Value :=
      tb_movprod.FieldByName('QUANTIDADE').Value;
    sqlAumentaEstoque.Execute();
    sqlAumentaEstoque.Active := false;
  end;

end;

end.
