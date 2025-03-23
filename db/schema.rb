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

ActiveRecord::Schema[7.1].define(version: 2025_03_23_103726) do
  create_table "damages", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.string "reason"
    t.decimal "loss_amount", precision: 10
    t.date "damage_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_damages_on_product_id"
    t.index ["shop_id"], name: "index_damages_on_shop_id"
  end

  create_table "expenses", charset: "utf8mb3", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "expense_type"
    t.decimal "amount", precision: 10
    t.date "expense_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb3", force: :cascade do |t|
    t.integer "shop_id"
    t.string "name"
    t.string "category"
    t.decimal "purchase_price", precision: 10
    t.decimal "selling_price", precision: 10
    t.integer "stock_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", charset: "utf8mb3", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "product_id"
    t.integer "quantity"
    t.decimal "total_cost", precision: 10
    t.date "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", charset: "utf8mb3", force: :cascade do |t|
    t.integer "shop_id"
    t.decimal "total_sales", precision: 10
    t.decimal "total_expenses", precision: 10
    t.decimal "net_profit", precision: 10
    t.date "report_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", charset: "utf8mb3", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "product_id"
    t.integer "user_id"
    t.integer "quantity_sold"
    t.decimal "total_revenue", precision: 10
    t.date "sale_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.integer "shop_id"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "damages", "products"
  add_foreign_key "damages", "shops"
end
