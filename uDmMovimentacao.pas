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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMovimentacao: TDmMovimentacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmPrincipal;

{$R *.dfm}

end.
