object frmCadMovimentacao: TfrmCadMovimentacao
  Left = 0
  Top = 0
  Caption = 'Cadastro de Movimenta'#231#227'o'
  ClientHeight = 488
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 19
    Top = 112
    Width = 144
    Height = 16
    Caption = 'Tipo da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 19
    Top = 178
    Width = 78
    Height = 16
    Caption = 'Data e Hora'
    FocusControl = dbEdit_dataHora
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 19
    Top = 245
    Width = 84
    Height = 16
    Caption = 'Observa'#231#245'es'
    FocusControl = DBMemo1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 21
    Top = 391
    Width = 82
    Height = 16
    Caption = 'Respons'#225'vel'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbEdit_dataHora: TDBEdit
    Left = 19
    Top = 200
    Width = 125
    Height = 25
    AutoSize = False
    DataField = 'DATA_HORA'
    DataSource = DmMovimentacao.ds_movimentacao
    ReadOnly = True
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 19
    Top = 267
    Width = 246
    Height = 112
    DataField = 'OBSERVACAO'
    DataSource = DmMovimentacao.ds_movimentacao
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 19
    Top = 413
    Width = 175
    Height = 25
    AutoSize = False
    DataField = 'RESPONSAVEL'
    DataSource = DmMovimentacao.ds_movimentacao
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 299
    Top = 122
    Width = 286
    Height = 316
    DataSource = DmMovimentacao.ds_movimentacao
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBC_tipo: TDBComboBox
    Left = 19
    Top = 134
    Width = 175
    Height = 21
    Style = csDropDownList
    DataField = 'TIPO'
    DataSource = DmMovimentacao.ds_movimentacao
    Items.Strings = (
      'Entrada no Estoque'
      'Saida do Estoque')
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 608
    Top = 65
    Width = 476
    Height = 423
    Align = alRight
    BevelInner = bvRaised
    TabOrder = 5
    ExplicitTop = 57
    object Label6: TLabel
      Left = 24
      Top = 30
      Width = 201
      Height = 18
      Caption = 'Produtos da movimenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 71
      Width = 52
      Height = 16
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 359
      Width = 120
      Height = 16
      Caption = 'Total de Produtos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 328
      Top = 70
      Width = 74
      Height = 16
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 150
      Top = 360
      Width = 65
      Height = 17
      DataField = 'SomaQuantidade'
      DataSource = DmMovProd.ds_movprod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator2: TDBNavigator
      Left = 272
      Top = 26
      Width = 185
      Height = 29
      DataSource = DmMovProd.ds_movprod
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 24
      Top = 132
      Width = 433
      Height = 210
      DataSource = DmMovProd.ds_movprod
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeProduto'
          Title.Caption = 'NOME DO PRODUTO'
          Width = 150
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 328
      Top = 92
      Width = 129
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = DmMovProd.ds_movprod
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 93
      Width = 145
      Height = 21
      DataField = 'PRODUTO_ID'
      DataSource = DmMovProd.ds_movprod
      KeyField = 'PRODUTO_ID'
      ListField = 'NOME'
      ListSource = DmProdutos.ds_produtos
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 65
    Align = alTop
    BevelInner = bvSpace
    TabOrder = 6
    object Label1: TLabel
      Left = 17
      Top = 19
      Width = 271
      Height = 25
      Caption = 'Gerenciar Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 347
      Top = 17
      Width = 238
      Height = 31
      DataSource = DmMovimentacao.ds_movimentacao
      VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
