object DmMovimentacao: TDmMovimentacao
  OldCreateOrder = False
  Height = 262
  Width = 311
  object tb_movimentacao: TFDTable
    Active = True
    IndexFieldNames = 'MOVIMENTACAO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO'
    Left = 72
    Top = 64
    object tb_movimentacaoTIPO: TStringField
      DisplayWidth = 29
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object tb_movimentacaoDATA_HORA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object tb_movimentacaoOBSERVACAO: TMemoField
      DisplayWidth = 11
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object tb_movimentacaoRESPONSAVEL: TStringField
      DisplayWidth = 30
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 30
    end
    object tb_movimentacaoMOVIMENTACAO_ID: TIntegerField
      DisplayWidth = 16
      FieldName = 'MOVIMENTACAO_ID'
      Origin = 'MOVIMENTACAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qry_movimentacao: TFDQuery
    Connection = DmPrincipal.FDConnection1
    Left = 200
    Top = 64
  end
  object ds_movimentacao: TDataSource
    DataSet = tb_movimentacao
    Left = 96
    Top = 144
  end
end
