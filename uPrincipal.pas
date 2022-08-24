unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimentaes1: TMenuItem;
    CadastrarMovimentaes1: TMenuItem;
    Consultarmovimentaes1: TMenuItem;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure CadastrarMovimentaes1Click(Sender: TObject);
    procedure Consultarmovimentaes1Click(Sender: TObject);
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

procedure TfrmPrincipal.CadastrarMovimentaes1Click(Sender: TObject);
begin
  frmCadMovimentacao := TfrmCadMovimentacao.Create(Self);
  frmCadMovimentacao.Show;
end;

procedure TfrmPrincipal.Consultarmovimentaes1Click(Sender: TObject);
begin
  frmConsMovimentacao := TfrmConsMovimentacao.Create(Self);
  frmConsMovimentacao.Show;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmCadProduto := TfrmCadProduto.Create(Self);
  frmCadProduto.Show;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
