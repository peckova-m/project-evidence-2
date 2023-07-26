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

ActiveRecord::Schema[7.0].define(version: 2023_07_25_200420) do
  create_table "contracts", force: :cascade do |t|
    t.integer "policy_id", null: false
    t.integer "policyholder_id", null: false
    t.integer "monthly_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["policy_id"], name: "index_contracts_on_policy_id"
    t.index ["policyholder_id"], name: "index_contracts_on_policyholder_id"
  end

  create_table "policies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "monthly_revenue"
    t.string "most_valuable_costumer"
  end

  create_table "policyholders", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.string "email"
    t.string "phone"
    t.text "street"
    t.text "city"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contracts", "policies"
  add_foreign_key "contracts", "policyholders"
end
