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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130406190303) do

  create_table "pictures", :force => true do |t|
    t.integer  "property_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "properties", :force => true do |t|
    t.string   "property_type"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "marketvalue"
    t.string   "mortgageamount"
    t.string   "mortgageAPR"
    t.string   "mortgagetype"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "entry_type"
    t.text     "description"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "sqft"
    t.boolean  "gmaps"
    t.string   "mortgage_type"
    t.string   "Annual_Real_Estate_Taxes"
    t.string   "Exposures"
    t.string   "Year_Built"
    t.string   "Zoning"
    t.string   "Floor"
    t.string   "Asking_Price"
    t.string   "Parking_Spaces"
    t.integer  "property_id"
    t.string   "salvage_type"
    t.string   "celltower_type"
  end

  create_table "property_fields", :force => true do |t|
    t.string   "zoning"
    t.string   "year_built"
    t.string   "exposure"
    t.string   "pets"
    t.string   "unit_placement"
    t.string   "price_per_sqft"
    t.string   "when_available"
    t.string   "smoking"
    t.string   "Clear_Height"
    t.string   "Cap_Rate"
    t.string   "Roof"
    t.string   "Electrical_Service"
    t.string   "KWatt_Hours_Annually"
    t.string   "Volume_Water"
    t.string   "Height_Of_Drop"
    t.string   "Efficiency_of_HydroEquipment"
    t.string   "FAR"
    t.string   "Sewer"
    t.string   "Load_Capacity"
    t.string   "Loading_Docks"
    t.string   "Special_Permit"
    t.string   "Construction_Docs_Ready"
    t.string   "City_Water"
    t.string   "Zoning_Permit"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "marketvalue"
    t.string   "mortgageamount"
    t.string   "mortgageAPR"
    t.string   "mortgagetype"
    t.integer  "property_id"
    t.string   "total_rooms"
    t.string   "bedrooms"
    t.string   "full_bath"
    t.string   "half_bath"
    t.string   "quarter_bath"
    t.string   "outdoor_space"
    t.string   "elevator"
    t.string   "maintenance_fee"
    t.string   "available"
    t.string   "subdividable"
    t.string   "gross_income"
    t.string   "GRM"
    t.date     "start_date"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
