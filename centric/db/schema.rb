# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100314091524) do

  create_table "customer_orders", :force => true do |t|
    t.string   "tube_size"
    t.string   "grade"
    t.string   "specification"
    t.integer  "unit_price"
    t.integer  "customer_id"
    t.integer  "serialize_id"
    t.integer  "quantity"
    t.string   "unit_of_measure"
    t.string   "tital_weight"
    t.decimal  "rate_per_kilo"
    t.decimal  "total_amount"
    t.string   "email"
    t.string   "office_address"
    t.string   "vat_no"
    t.string   "ecc_no"
    t.string   "delivery_address"
    t.string   "po_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_person"
    t.integer  "phone"
    t.integer  "mobile"
    t.string   "email"
    t.string   "excise_registration_no"
    t.string   "vat_no"
    t.string   "tin_no"
    t.string   "pan_no"
    t.string   "payment_terms"
    t.string   "bankers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rawmaterial_categories", :force => true do |t|
    t.string   "name"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesplans", :force => true do |t|
    t.string   "po_no"
    t.string   "customer_name"
    t.integer  "customer_id"
    t.string   "tube_size"
    t.integer  "serialize_id"
    t.integer  "quantity"
    t.string   "customer_code"
    t.integer  "pieces"
    t.integer  "meter"
    t.integer  "kilos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serializes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
