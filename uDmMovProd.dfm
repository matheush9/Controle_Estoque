object DmMovProd: TDmMovProd
  OldCreateOrder = False
  Height = 247
  Width = 315
  object tb_movprod: TFDTable
    Active = True
    IndexFieldNames = 'MV_PR_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO_PRODUTOS'
    Left = 96
    Top = 32
    object tb_movprodMV_PR_ID: TIntegerField
      FieldName = 'MV_PR_ID'
      Origin = 'MV_PR_ID'
    end
    object tb_movprodMOVIMENTACAO_ID: TIntegerField
      FieldName = 'MOVIMENTACAO_ID'
      Origin = 'MOVIMENTACAO_ID'
    end
    object tb_movprodPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
    end
    object tb_movprodQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
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
end
