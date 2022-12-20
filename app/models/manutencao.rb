class Manutencao < ApplicationRecord
  belongs_to :cliente
  belongs_to :funcionario
  def calcular_valor_total
    total = (self.dataFim - self.dataInicio) * self.total
    self.valorTotal = total
    self.save
    return total
  end
end
