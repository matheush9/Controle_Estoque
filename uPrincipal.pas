unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Movimentao1: TMenuItem;
    Cadastrarmovimentao1: TMenuItem;
    Consultarmovimentao1: TMenuItem;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
