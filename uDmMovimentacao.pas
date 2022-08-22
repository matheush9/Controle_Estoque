unit uDmMovimentacao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmMovimentacao = class(TDataModule)
    tb_movimentacao: TFDTable;
    qry_movimentacao: TFDQuery;
    tb_movimentacaoTIPO: TStringField;
    tb_movimentacaoDATA_HORA: TSQLTimeStampField;
    tb_movimentacaoOBSERVACAO: TMemoField;
    tb_movimentacaoRESPONSAVEL: TStringField;
    tb_movimentacaoMOVIMENTACAO_ID: TIntegerField;
    ds_movimentacao: TDataSource;
    procedure tb_movimentacaoAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMovimentacao: TDmMovimentacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmPrincipal, uDmMovProd;

{$R *.dfm}

procedure TDmMovimentacao.DataModuleCreate(Sender: TObject);
begin
  tb_movimentacao.Active := true;
end;

procedure TDmMovimentacao.tb_movimentacaoAfterScroll(DataSet: TDataSet);
begin
  DmMovProd.CalcTotalProd;
end;

end.
