object DmMovimentacao: TDmMovimentacao
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 291
  Width = 311
  object tb_movimentacao: TFDTable
    IndexFieldNames = 'MOVIMENTACAO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO'
    Left = 72
    Top = 40
    object tb_movimentacaoTIPO: TStringField
      DisplayWidth = 29
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
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
  object sql_movimentacao: TFDQuery
    Connection = DmPrincipal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM MOVIMENTACAO;')
    Left = 200
    Top = 40
  end
  object ds_movimentacao: TDataSource
    DataSet = tb_movimentacao
    Left = 72
    Top = 112
  end
  object ds_sql_movimentacao: TDataSource
    DataSet = sql_movimentacao
    Left = 200
    Top = 112
  end
  object sql_movprod: TFDQuery
    IndexFieldNames = 'MOVIMENTACAO_ID'
    MasterSource = ds_sql_movimentacao
    MasterFields = 'MOVIMENTACAO_ID'
    Connection = DmPrincipal.FDConnection1
    SQL.Strings = (
      'SELECT'
      'MOVIMENTACAO_PRODUTOS.*,'
      'PRODUTOS.nome'
      'FROM MOVIMENTACAO_PRODUTOS'
      
        'LEFT JOIN produtos ON PRODUTOS.produto_id = MOVIMENTACAO_PRODUTO' +
        'S.produto_id')
    Left = 72
    Top = 192
    object sql_movprodMV_PR_ID: TIntegerField
      FieldName = 'MV_PR_ID'
      Origin = 'MV_PR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sql_movprodMOVIMENTACAO_ID: TIntegerField
      FieldName = 'MOVIMENTACAO_ID'
      Origin = 'MOVIMENTACAO_ID'
    end
    object sql_movprodPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
    end
    object sql_movprodQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object sql_movprodNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 100
    end
  end
  object ds_sql_movprod: TDataSource
    DataSet = sql_movprod
    Left = 200
    Top = 192
  end
end
