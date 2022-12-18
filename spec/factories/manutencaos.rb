FactoryBot.define do
  factory :manutencao do
    dataInicio { "2022-12-18" }
    dataTermino { "2022-12-18" }
    status { false }
    cliente { nil }
    funcionario { nil }
  end
end
