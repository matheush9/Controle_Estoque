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
  uDmMovProd in 'uDmMovProd.pas' {DmMovProd: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmPrincipal, DmPrincipal);
  Application.Run;
end.
