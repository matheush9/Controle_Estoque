object DmMovimentacao: TDmMovimentacao
  OldCreateOrder = False
  Height = 262
  Width = 311
  object tb_movimentacao: TFDTable
    Active = True
    IndexFieldNames = 'MOVIMENTACAO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO'
    Left = 64
    Top = 64
    object tb_movimentacaoTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object tb_movimentacaoDATA_HORA: TIntegerField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object tb_movimentacaoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object tb_movimentacaoRESPONSAVEL: TIntegerField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
    end
    object tb_movimentacaoMOVIMENTACAO_ID: TIntegerField
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
end
