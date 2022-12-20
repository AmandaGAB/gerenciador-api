class CreateEquipamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :equipamentos do |t|
      t.string :descricao
      t.string :modelo
      t.string :tipo
      t.float :total
      t.references :cliente, null: false, foreign_key: true
      t.references :manutencao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
