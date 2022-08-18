object DmMovimentacao: TDmMovimentacao
  OldCreateOrder = False
  Height = 262
  Width = 311
  object tb_movimentacao: TFDTable
    IndexFieldNames = 'MOVIMENTACAO_ID'
    Connection = DmPrincipal.FDConnection1
    TableName = 'MOVIMENTACAO'
    Left = 64
    Top = 64
  end
  object qry_movimentacao: TFDQuery
    Connection = DmPrincipal.FDConnection1
    Left = 200
    Top = 64
  end
end
