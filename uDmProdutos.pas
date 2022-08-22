unit uDmProdutos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmProdutos = class(TDataModule)
    tb_produtos: TFDTable;
    tb_produtosNOME: TStringField;
    tb_produtosFABRICANTE: TStringField;
    tb_produtosVALIDADE: TDateField;
    tb_produtosESTOQUE_ATUAL: TIntegerField;
    tb_produtosPRODUTO_ID: TIntegerField;
    ds_produtos: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure tb_produtosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmProdutos: TDmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmPrincipal, uDmMovimentacao;

{$R *.dfm}

procedure TDmProdutos.DataModuleCreate(Sender: TObject);
begin
  tb_produtos.Active := true;
end;

procedure TDmProdutos.tb_produtosNewRecord(DataSet: TDataSet);
begin
  tb_produtosESTOQUE_ATUAL.value := 0;
end;

end.
