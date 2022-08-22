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
    tb_movprodnomeProduto: TStringField;
    procedure tb_movprodAfterDelete(DataSet: TDataSet);
    procedure tb_movprodAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CalcTotalProd;
  end;

var
  DmMovProd: TDmMovProd;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmPrincipal, uDmMovimentacao, uDmProdutos, uCadMovimentacao;

{$R *.dfm}

procedure TDmMovProd.CalcTotalProd;
var
  Total: integer;
begin
  if tb_movprod.State in [dsBrowse] then
  begin
    tb_movprod.first;

    while tb_movprod.Eof = false do
    begin
      Total := Total + tb_movprod.FieldByName('QUANTIDADE').Value;
      tb_movprod.Next;
    end;

    if frmCadMovimentacao <> nil then
    begin
      frmCadMovimentacao.lb_totalP.Caption := IntToStr(Total);
    end;

  end;
end;

procedure TDmMovProd.DataModuleCreate(Sender: TObject);
begin
  tb_movprod.Active := true;
end;

procedure TDmMovProd.tb_movprodAfterDelete(DataSet: TDataSet);
begin
  CalcTotalProd;
end;

procedure TDmMovProd.tb_movprodAfterPost(DataSet: TDataSet);
begin
  CalcTotalProd;
end;

end.
