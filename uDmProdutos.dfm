object DmProdutos: TDmProdutos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 250
  Width = 300
  object tb_produtos: TFDTable
    Active = True
    IndexFieldNames = 'PRODUTO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'PRODUTOS'
    Left = 80
    Top = 56
    object tb_produtosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object tb_produtosFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 50
    end
    object tb_produtosVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      EditMask = '##/##/####;1;_'
    end
    object tb_produtosESTOQUE_ATUAL: TIntegerField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      ReadOnly = True
    end
    object tb_produtosPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object ds_produtos: TDataSource
    DataSet = tb_produtos
    Left = 168
    Top = 56
  end
end
