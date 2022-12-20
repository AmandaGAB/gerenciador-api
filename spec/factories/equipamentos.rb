FactoryBot.define do
  factory :equipamento do
    descricao { "MyString" }
    modelo { "MyString" }
    tipo { "MyString" }
    cliente { nil }
    manutencao { nil }
  end
end
