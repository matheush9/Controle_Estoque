object frmConsMovimentacao: TfrmConsMovimentacao
  Left = 0
  Top = 0
  Caption = 'Consulta de Movimenta'#231#245'es'
  ClientHeight = 506
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 581
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 271
      Height = 25
      Caption = 'Consultar Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 628
    Height = 72
    Align = alTop
    TabOrder = 1
    ExplicitTop = 67
    object Label3: TLabel
      Left = 24
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Data inicial:'
    end
    object Label4: TLabel
      Left = 152
      Top = 13
      Width = 50
      Height = 13
      Caption = 'Data final:'
    end
    object Button1: TButton
      Left = 296
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Consultar'
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 24
      Top = 32
      Width = 102
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 152
      Top = 32
      Width = 104
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 145
    Width = 628
    Height = 361
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 151
    object Label2: TLabel
      Left = 24
      Top = 312
      Width = 185
      Height = 18
      Caption = 'Total de movimenta'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 223
      Top = 312
      Width = 42
      Height = 16
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 24
      Width = 271
      Height = 273
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 324
      Top = 24
      Width = 285
      Height = 273
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
