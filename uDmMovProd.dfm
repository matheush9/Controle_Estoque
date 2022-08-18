object DmMovProd: TDmMovProd
  OldCreateOrder = False
  Height = 247
  Width = 315
  object tb_movprod: TFDTable
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO_PRODUTOS'
    Left = 96
    Top = 32
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
