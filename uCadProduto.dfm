object frmCadProduto: TfrmCadProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de produtos'
  ClientHeight = 450
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 41
    Width = 257
    Height = 29
    Caption = 'Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 125
    Width = 111
    Height = 16
    Caption = 'Nome do Produto'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 202
    Width = 68
    Height = 16
    Caption = 'Fabricante'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 277
    Width = 110
    Height = 16
    Caption = 'Data de Validade'
    FocusControl = dbEdit_data
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 190
    Top = 277
    Width = 91
    Height = 16
    Caption = 'Estoque Atual'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 147
    Width = 300
    Height = 25
    AutoSize = False
    DataField = 'NOME'
    DataSource = DmProdutos.ds_produtos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 221
    Width = 200
    Height = 25
    AutoSize = False
    DataField = 'FABRICANTE'
    DataSource = DmProdutos.ds_produtos
    TabOrder = 1
  end
  object dbEdit_data: TDBEdit
    Left = 24
    Top = 296
    Width = 132
    Height = 25
    AutoSize = False
    DataField = 'VALIDADE'
    DataSource = DmProdutos.ds_produtos
    MaxLength = 10
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 190
    Top = 296
    Width = 134
    Height = 25
    AutoSize = False
    DataField = 'ESTOQUE_ATUAL'
    DataSource = DmProdutos.ds_produtos
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 355
    Top = 125
    Width = 281
    Height = 308
    DataSource = DmProdutos.ds_produtos
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 372
    Top = 40
    Width = 231
    Height = 30
    DataSource = DmProdutos.ds_produtos
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 5
  end
end
