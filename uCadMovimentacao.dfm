object frmCadMovimentacao: TfrmCadMovimentacao
  Left = 0
  Top = 0
  Caption = 'Cadastro de Movimenta'#231#227'o'
  ClientHeight = 459
  ClientWidth = 625
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
    Left = 17
    Top = 36
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
  object Label2: TLabel
    Left = 16
    Top = 113
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
    Left = 16
    Top = 166
    Width = 78
    Height = 16
    Caption = 'Data e Hora'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 17
    Top = 219
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
    Left = 17
    Top = 347
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
  object DBEdit2: TDBEdit
    Left = 16
    Top = 188
    Width = 125
    Height = 25
    AutoSize = False
    DataField = 'DATA_HORA'
    DataSource = ds_movimentacao
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 17
    Top = 241
    Width = 250
    Height = 100
    DataField = 'OBSERVACAO'
    DataSource = ds_movimentacao
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 17
    Top = 369
    Width = 175
    Height = 25
    AutoSize = False
    DataField = 'RESPONSAVEL'
    DataSource = ds_movimentacao
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 305
    Top = 139
    Width = 304
    Height = 289
    DataSource = ds_movimentacao
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 339
    Top = 37
    Width = 238
    Height = 31
    DataSource = ds_movimentacao
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
    TabOrder = 4
    OnClick = DBNavigator1Click
  end
  object DBComboBox1: TDBComboBox
    Left = 17
    Top = 139
    Width = 145
    Height = 21
    Style = csDropDownList
    DataSource = ds_movimentacao
    Items.Strings = (
      'Entrada no Estoque'
      'Saida do Estoque')
    TabOrder = 5
  end
  object ds_movimentacao: TDataSource
    DataSet = DmMovimentacao.tb_movimentacao
    Left = 448
    Top = 80
  end
end
