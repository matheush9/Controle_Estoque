object DmProdutos: TDmProdutos
  OldCreateOrder = False
  Height = 250
  Width = 300
  object tb_produtos: TFDTable
    Connection = DmPrincipal.FDConnection1
    TableName = 'PRODUTOS'
    Left = 80
    Top = 72
  end
end
