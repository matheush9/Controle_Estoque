object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Controle de Estoque'
  ClientHeight = 500
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 500
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 456
    Top = 408
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Sistema2: TMenuItem
      Caption = 'Cadastro'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object Cadastrarmov1: TMenuItem
        Caption = 'Cadastrar movimenta'#231#227'o'
        OnClick = Cadastrarmov1Click
      end
      object Consultarmov1: TMenuItem
        Caption = 'Consultar movimenta'#231#227'o'
        OnClick = Consultarmov1Click
      end
    end
  end
end
