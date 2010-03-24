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

ActiveRecord::Schema.define(:version => 20100324195040) do

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

  create_table "rawmaterials", :force => true do |t|
    t.string   "name"
    t.string   "grade"
    t.string   "width"
    t.string   "thickness"
    t.string   "coil_weight"
    t.string   "type"
    t.integer  "rawmaterial_category_id"
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

  create_table "slittingproductions", :force => true do |t|
    t.integer  "rawmaterial_id"
    t.integer  "slitting_id"
    t.datetime "shift"
    t.string   "operator_name"
    t.string   "source"
    t.decimal  "input_weight"
    t.decimal  "width"
    t.decimal  "thickness"
    t.string   "grade"
    t.string   "type"
    t.integer  "width_slitting"
    t.integer  "no_of_slits_slitting"
    t.decimal  "slit_coil_weight"
    t.decimal  "slit_weight"
    t.decimal  "scrap_weight"
    t.string   "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slitting_coil_no"
  end

  create_table "slittings", :force => true do |t|
    t.integer  "rawmaterial_id"
    t.integer  "coil_width"
    t.decimal  "coil_weight"
    t.integer  "side_trim"
    t.decimal  "thickness"
    t.string   "scrap"
    t.decimal  "slit_width"
    t.decimal  "slit_weight"
    t.integer  "no_of_slits"
    t.decimal  "weight"
    t.string   "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slitting_coil_no"
  end

  create_table "tube_mill_performance_reports", :force => true do |t|
    t.string   "lot_no"
    t.integer  "customer_id"
    t.string   "od_width"
    t.decimal  "id_height"
    t.decimal  "thickness"
    t.decimal  "length"
    t.decimal  "id_fin_height"
    t.string   "drifting"
    t.string   "flattening"
    t.string   "specification"
    t.string   "rm_grade"
    t.string   "spl_requirement"
    t.datetime "date"
    t.datetime "shift"
    t.string   "operator_name"
    t.string   "inspector_name"
    t.decimal  "open"
    t.decimal  "joint"
    t.decimal  "tool_mark"
    t.decimal  "roll_mark"
    t.decimal  "pick_up"
    t.decimal  "scratch"
    t.decimal  "week_weld"
    t.decimal  "bend"
    t.decimal  "nf_c"
    t.string   "remarks"
    t.integer  "lot_numbers"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "slittingproduction_id"
  end

  create_table "tube_mill_stoppage_reports", :force => true do |t|
    t.datetime "date"
    t.datetime "shift"
    t.decimal  "size"
    t.string   "customer"
    t.string   "description_of_breakdown"
    t.string   "type"
    t.string   "stoppage_code"
    t.datetime "from"
    t.datetime "to"
    t.string   "total_time"
    t.string   "remarks"
    t.string   "electrical_maintainence"
    t.string   "mechanical_maintainence"
    t.string   "operational"
    t.string   "roll_change"
    t.string   "raw_material_shortage"
    t.string   "man_power_shortage"
    t.string   "crane_delay"
    t.string   "power_failure"
    t.string   "remarks_last"
    t.string   "shift_incharge"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uncoiler_reports", :force => true do |t|
    t.datetime "date"
    t.datetime "shift"
    t.string   "operator_name"
    t.integer  "slittingproduction_id"
    t.decimal  "tube_od"
    t.decimal  "width"
    t.decimal  "thickness"
    t.string   "grade"
    t.string   "type"
    t.decimal  "width_actual"
    t.decimal  "thickness_actual"
    t.string   "grade_actual"
    t.string   "type_actual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
