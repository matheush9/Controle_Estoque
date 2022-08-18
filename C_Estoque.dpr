program C_Estoque;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadProduto in 'uCadProduto.pas' {frmCadProduto},
  uCadMovimentacao in 'uCadMovimentacao.pas' {frmCadMovimentacao},
  uConsMovimentacao in 'uConsMovimentacao.pas' {frmConsMovimentacao},
  uDmPrincipal in 'uDmPrincipal.pas' {DmPrincipal: TDataModule},
  uDmProdutos in 'uDmProdutos.pas' {DmProdutos: TDataModule},
  uDmMovimentacao in 'uDmMovimentacao.pas' {DmMovimentacao: TDataModule},
  uDmMovProd in 'uDmMovProd.pas' {DmMovProd: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
