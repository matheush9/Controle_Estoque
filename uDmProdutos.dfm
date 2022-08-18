object DmProdutos: TDmProdutos
  OldCreateOrder = False
  Height = 250
  Width = 300
  object tb_produtos: TFDTable
    Active = True
    IndexFieldNames = 'PRODUTO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'PRODUTOS'
    Left = 80
    Top = 72
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
    end
    object tb_produtosESTOQUE_ATUAL: TIntegerField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
    end
    object tb_produtosPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      Required = True
    end
  end
end
