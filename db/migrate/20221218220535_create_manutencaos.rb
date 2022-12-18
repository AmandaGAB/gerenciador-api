class CreateManutencaos < ActiveRecord::Migration[7.0]
  def change
    create_table :manutencaos do |t|
      t.date :dataInicio
      t.date :dataTermino
      t.boolean :status
      t.references :cliente, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
