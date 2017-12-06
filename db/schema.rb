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

ActiveRecord::Schema.define(version: 20171206083009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_sales", force: :cascade do |t|
    t.date "invoice_date"
    t.string "serial_no"
    t.string "gstin_no"
    t.string "eway_bill"
    t.string "transportation_mode"
    t.string "vehicle_no"
    t.date "date"
    t.string "time_of_supply"
    t.string "place_of_supply"
    t.string "total_invoice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charted_accountants", force: :cascade do |t|
    t.string "name"
    t.string "phn_no"
    t.string "address"
    t.string "email"
    t.string "firm_name"
    t.string "ca_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "customer_items", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "invoice_date"
    t.string "serial_no"
    t.string "gstin_no"
    t.string "eway_bill"
    t.string "transportation_mode"
    t.string "vehicle_no"
    t.date "date"
    t.string "time_of_supply"
    t.string "place_of_supply"
    t.string "total_invoice"
    t.integer "invoice_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "gstin_no_reg"
    t.string "arn_no"
    t.string "address"
    t.string "cust_place_of_supply"
    t.string "cust_name_of_commodity_supplied"
    t.string "cust_tarrif_no"
    t.string "cust_rate_of_tax"
    t.string "cust_name_of_service"
    t.string "cust_serv_acc_code"
    t.string "cust_pan_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "party_id"
    t.string "invoice_no"
  end

  create_table "export_purchase_bill_items", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "export_purchase_bill_id"
    t.integer "quantity"
    t.float "net_amount"
    t.float "tax_rate"
    t.float "tax_amt"
    t.float "total_amt"
    t.string "item_description"
    t.integer "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_purchase_bill_id"], name: "index_export_purchase_bill_items_on_export_purchase_bill_id"
    t.index ["item_id"], name: "index_export_purchase_bill_items_on_item_id"
  end

  create_table "export_purchase_bills", force: :cascade do |t|
    t.integer "purchase_no"
    t.date "date"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_export_purchase_bills_on_customer_id"
  end

  create_table "general_settings", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_no"
    t.string "email"
    t.string "business_description"
    t.string "gst_no"
    t.string "pan"
    t.string "name_of_service"
    t.string "service_acc_code"
    t.string "rate_of_tax"
    t.string "address"
    t.string "state_name"
    t.string "state_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "invoice_items", force: :cascade do |t|
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
    t.string "number"
    t.string "quantity"
    t.string "net_amt"
    t.decimal "tax_rate", precision: 10, scale: 2
    t.decimal "tax_amt", precision: 10, scale: 2
    t.string "total_amt"
    t.string "item_descritption"
    t.string "unit_price"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_no"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "dogns"
    t.string "item_hsn_no"
    t.string "uom"
    t.string "qty"
    t.string "rate"
    t.string "taxable_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.decimal "cgst"
    t.decimal "sgst"
    t.decimal "igst"
    t.bigint "unit_of_measure_id"
    t.index ["unit_of_measure_id"], name: "index_items_on_unit_of_measure_id"
  end

  create_table "nillrate_exempt_bill_items", force: :cascade do |t|
    t.integer "purchase_no"
    t.date "date"
    t.integer "quantity"
    t.float "net_amount"
    t.float "tax_rate"
    t.float "tax_amt"
    t.float "total_amt"
    t.string "item_description"
    t.integer "unit_price"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "nillrate_exempt_bill_id"
    t.bigint "item_id"
    t.index ["customer_id"], name: "index_nillrate_exempt_bill_items_on_customer_id"
    t.index ["item_id"], name: "index_nillrate_exempt_bill_items_on_item_id"
    t.index ["nillrate_exempt_bill_id"], name: "index_nillrate_exempt_bill_items_on_nillrate_exempt_bill_id"
  end

  create_table "nillrate_exempt_bills", force: :cascade do |t|
    t.integer "purchase_no"
    t.date "date"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_nillrate_exempt_bills_on_customer_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "party_name"
    t.string "party_gstin_no"
    t.string "party_arn_no"
    t.string "party_address"
    t.string "place_of_supply"
    t.string "commodity_name"
    t.string "tarrif_no"
    t.string "hsn_no"
    t.string "rate_of_tax"
    t.string "name_service"
    t.string "service_acc_code"
    t.string "party_pan_no"
    t.string "state_name"
    t.string "state_code"
    t.string "ca_name"
    t.string "ca_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "party_no"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "charted_accountant_id"
    t.string "composite"
    t.string "regular"
    t.index ["charted_accountant_id"], name: "index_parties_on_charted_accountant_id"
  end

  create_table "purchase_bill_items", force: :cascade do |t|
    t.integer "quantity"
    t.float "net_amount"
    t.float "tax_rate"
    t.float "tax_amt"
    t.float "total_amt"
    t.string "item_description"
    t.integer "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.bigint "purchase_bill_id"
    t.index ["item_id"], name: "index_purchase_bill_items_on_item_id"
    t.index ["purchase_bill_id"], name: "index_purchase_bill_items_on_purchase_bill_id"
  end

  create_table "purchase_bills", force: :cascade do |t|
    t.integer "purchase_no"
    t.date "date"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_purchase_bills_on_customer_id"
  end

  create_table "unit_of_measures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_charted_accountants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "charted_accountant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charted_accountant_id"], name: "index_user_charted_accountants_on_charted_accountant_id"
    t.index ["user_id"], name: "index_user_charted_accountants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "general_setting_id"
    t.string "role"
    t.bigint "charted_accountant_id"
    t.bigint "party_id"
    t.string "first_name"
    t.string "username"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["charted_accountant_id"], name: "index_users_on_charted_accountant_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["general_setting_id"], name: "index_users_on_general_setting_id"
    t.index ["party_id"], name: "index_users_on_party_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "export_purchase_bill_items", "export_purchase_bills"
  add_foreign_key "export_purchase_bill_items", "items"
  add_foreign_key "export_purchase_bills", "customers"
  add_foreign_key "items", "unit_of_measures"
  add_foreign_key "nillrate_exempt_bill_items", "customers"
  add_foreign_key "nillrate_exempt_bill_items", "items"
  add_foreign_key "nillrate_exempt_bill_items", "nillrate_exempt_bills"
  add_foreign_key "nillrate_exempt_bills", "customers"
  add_foreign_key "parties", "charted_accountants"
  add_foreign_key "purchase_bill_items", "items"
  add_foreign_key "purchase_bill_items", "purchase_bills"
  add_foreign_key "purchase_bills", "customers"
  add_foreign_key "user_charted_accountants", "charted_accountants"
  add_foreign_key "user_charted_accountants", "users"
  add_foreign_key "users", "charted_accountants"
  add_foreign_key "users", "general_settings"
  add_foreign_key "users", "parties"
end
