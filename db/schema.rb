# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150522131451) do

  create_table "addresses", force: :cascade do |t|
    t.string   "route"
    t.integer  "number"
    t.string   "cap",        limit: 5
    t.string   "prov",       limit: 2
    t.string   "city"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "billings", force: :cascade do |t|
    t.string   "ragione_sociale"
    t.integer  "address_id"
    t.string   "payment_mode"
    t.string   "bank"
    t.string   "agency"
    t.string   "iban",            limit: 27
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "blocks", force: :cascade do |t|
    t.string   "tipo"
    t.float    "cu"
    t.integer  "q"
    t.integer  "mensilita"
    t.float    "tot"
    t.date     "attivazione"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
  end

  create_table "companies", force: :cascade do |t|
    t.integer  "referent_id"
    t.integer  "address_id"
    t.string   "ragione_sociale"
    t.string   "piva",            limit: 16
    t.string   "phone_number",    limit: 10
    t.string   "fax",             limit: 10
    t.string   "mail"
    t.string   "iban",            limit: 27
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "contract_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "referent_id"
    t.date     "data"
    t.date     "activation_data"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "discount"
  end

  create_table "costumer_mails", force: :cascade do |t|
    t.string   "nome"
    t.string   "dominio"
    t.integer  "mb"
    t.integer  "mensilita"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
  end

  create_table "domains", force: :cascade do |t|
    t.string   "nome"
    t.string   "estensione",  limit: 4
    t.float    "costo"
    t.integer  "mensilita"
    t.float    "tot"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "contract_id"
  end

  create_table "heads", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "born_date"
    t.string   "born_place"
    t.string   "cod_fiscale",     limit: 16
    t.integer  "address_id"
    t.string   "document_type"
    t.string   "document_number"
    t.date     "document_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "company_id"
  end

  create_table "referents", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "role"
    t.string   "phone",       limit: 10
    t.string   "mail"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "contract_id"
  end

  create_table "seos", force: :cascade do |t|
    t.string   "tipo"
    t.string   "parole"
    t.float    "importo"
    t.date     "attivazione"
    t.integer  "mensilita"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "tipo"
    t.float    "cu"
    t.integer  "q"
    t.integer  "mensilita"
    t.float    "tot"
    t.date     "attivazione"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
  end

  create_table "suites", force: :cascade do |t|
    t.float    "cpu_p"
    t.float    "ram_p"
    t.float    "hd_p"
    t.float    "nas_p"
    t.integer  "cpu_q"
    t.integer  "ram_q"
    t.integer  "hd_q"
    t.integer  "nas_q"
    t.float    "base"
    t.integer  "mensilita"
    t.date     "attivazione"
    t.float    "tot"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
  end

  create_table "web_sites", force: :cascade do |t|
    t.string   "padre"
    t.string   "servizio"
    t.text     "descrizione"
    t.float    "importo"
    t.date     "attivazione"
    t.integer  "mensilita"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
  end

end
