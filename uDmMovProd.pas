unit uDmMovProd;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmMovProd = class(TDataModule)
    tb_movprod: TFDTable;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    tb_movprodMV_PR_ID: TIntegerField;
    tb_movprodMOVIMENTACAO_ID: TIntegerField;
    tb_movprodPRODUTO_ID: TIntegerField;
    tb_movprodQUANTIDADE: TIntegerField;
    ds_movprod: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMovProd: TDmMovProd;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmPrincipal, uDmMovimentacao;

{$R *.dfm}

end.
