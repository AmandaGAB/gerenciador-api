# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_18_221700) do
  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipamentos", force: :cascade do |t|
    t.string "descricao"
    t.string "modelo"
    t.string "tipo"
    t.integer "cliente_id", null: false
    t.integer "manutencao_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_equipamentos_on_cliente_id"
    t.index ["manutencao_id"], name: "index_equipamentos_on_manutencao_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manutencaos", force: :cascade do |t|
    t.date "dataInicio"
    t.date "dataTermino"
    t.boolean "status"
    t.integer "cliente_id", null: false
    t.integer "funcionario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "total"
    t.index ["cliente_id"], name: "index_manutencaos_on_cliente_id"
    t.index ["funcionario_id"], name: "index_manutencaos_on_funcionario_id"
  end

  add_foreign_key "equipamentos", "clientes"
  add_foreign_key "equipamentos", "manutencaos"
  add_foreign_key "manutencaos", "clientes"
  add_foreign_key "manutencaos", "funcionarios"
end
