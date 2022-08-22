unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Movimentao1: TMenuItem;
    Cadastrarmov1: TMenuItem;
    Consultarmov1: TMenuItem;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Cadastrarmov1Click(Sender: TObject);
    procedure Consultarmov1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadMovimentacao, uCadProduto, uConsMovimentacao;

procedure TfrmPrincipal.Cadastrarmov1Click(Sender: TObject);
begin
  if frmCadMovimentacao = nil then
  begin
    frmCadMovimentacao := TfrmCadMovimentacao.Create(nil);
    frmCadMovimentacao.ShowModal;
  end;
end;

procedure TfrmPrincipal.Consultarmov1Click(Sender: TObject);
begin
  if frmConsMovimentacao = nil then
  begin
    frmConsMovimentacao := TfrmConsMovimentacao.Create(frmConsMovimentacao);
    frmConsMovimentacao.ShowModal;
  end;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  if frmCadProduto = nil then
  begin
    frmCadProduto := TfrmCadProduto.Create(frmCadProduto);
    frmCadProduto.ShowModal;
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
