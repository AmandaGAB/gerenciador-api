class Equipamento < ApplicationRecord
  belongs_to :cliente
  belongs_to :manutencao
end
