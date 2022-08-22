object DmMovProd: TDmMovProd
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 247
  Width = 315
  object tb_movprod: TFDTable
    AfterPost = tb_movprodAfterPost
    AfterDelete = tb_movprodAfterDelete
    IndexName = 'FK_MOVIMENTACAO_PRODUTOS_1'
    MasterSource = DmMovimentacao.ds_movimentacao
    MasterFields = 'MOVIMENTACAO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO_PRODUTOS'
    Left = 96
    Top = 40
    object tb_movprodMV_PR_ID: TIntegerField
      FieldName = 'MV_PR_ID'
      Origin = 'MV_PR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tb_movprodMOVIMENTACAO_ID: TIntegerField
      FieldName = 'MOVIMENTACAO_ID'
      Origin = 'MOVIMENTACAO_ID'
    end
    object tb_movprodQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object tb_movprodPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
    end
    object tb_movprodnomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeProduto'
      LookupDataSet = DmProdutos.tb_produtos
      LookupKeyFields = 'PRODUTO_ID'
      LookupResultField = 'NOME'
      KeyFields = 'PRODUTO_ID'
      Size = 100
      Lookup = True
    end
  end
  object sqlAumentaEstoque: TFDCommand
    ParamData = <
      item
        Name = 'prodId'
      end
      item
        Name = 'prodQtd'
      end>
    Left = 96
    Top = 96
  end
  object sqlDiminuiEstoque: TFDCommand
    ParamData = <
      item
        Name = 'idProd'
      end
      item
        Name = 'prodQtd'
      end>
    Left = 96
    Top = 160
  end
  object ds_movprod: TDataSource
    DataSet = tb_movprod
    Left = 200
    Top = 32
  end
end
