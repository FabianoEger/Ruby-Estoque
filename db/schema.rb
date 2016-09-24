# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160922005159) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.integer  "valor"
    t.date     "data"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_compras_on_cliente_id"
  end

  create_table "depositos", force: :cascade do |t|
    t.integer  "produto_id"
    t.integer  "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_depositos_on_produto_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "quantidade"
    t.integer  "produto_id"
    t.integer  "compra_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_items_on_compra_id"
    t.index ["produto_id"], name: "index_items_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.float    "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
