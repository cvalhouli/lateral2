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

ActiveRecord::Schema.define(:version => 20130530165439) do

  create_table "early_pregnancies", :force => true do |t|
    t.string   "zip"
    t.string   "teen_pregnancy"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "manhattans", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "message_copies", :force => true do |t|
    t.integer  "sent_messageable_id"
    t.string   "sent_messageable_type"
    t.integer  "recipient_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "message_copies", ["sent_messageable_id", "recipient_id"], :name => "outbox_idx"

  create_table "messages", :force => true do |t|
    t.integer  "received_messageable_id"
    t.string   "received_messageable_type"
    t.integer  "sender_id"
    t.string   "subject"
    t.text     "body"
    t.boolean  "opened",                    :default => false
    t.boolean  "deleted",                   :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "messages", ["received_messageable_id", "sender_id"], :name => "inbox_idx"

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.string   "zip_code"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "boundaries"
    t.string   "history"
    t.string   "notable_resident"
    t.string   "of_note"
    t.string   "city"
    t.string   "housing_stock"
    t.string   "wikipedia_link"
  end

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
    t.float    "hoa"
    t.string   "neighborhood"
    t.string   "nearby_transit"
    t.string   "local_schools"
    t.string   "ownership_costs"
    t.integer  "user_id"
    t.string   "nearest_synagogue"
    t.float    "synagogue_distance"
    t.float    "transit_distance"
    t.string   "flood_zone"
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
    t.float    "hoa"
    t.float    "Annual_real_estate_tax"
    t.string   "north"
    t.string   "south"
    t.string   "east"
    t.string   "west"
    t.string   "video_link"
    t.string   "proprerty_website"
    t.string   "unit_floor"
    t.string   "corner_unit"
    t.string   "front_of_building"
    t.string   "rear_of_building"
    t.string   "street_level"
    t.string   "basement"
    t.string   "other_placement"
    t.string   "laundry"
    t.string   "private_balcony"
    t.string   "private_roof_deck"
    t.string   "common_roof_deck"
    t.string   "common_garden"
    t.string   "indoor_swimming_pool"
    t.string   "outdoor_swimming_pool"
    t.string   "other_outdoor_space"
    t.string   "fireplace"
    t.string   "raised_ground_floor"
    t.string   "backyard"
    t.string   "outdoor_none"
    t.string   "top_floor"
    t.string   "obstructed_views"
    t.string   "floor_through"
    t.string   "first_month"
    t.string   "last_month"
    t.string   "security_deposit"
    t.string   "rented_by"
    t.string   "dishwasher"
    t.string   "furnished"
    t.string   "disabled_access"
    t.string   "wheelchair"
    t.string   "entrance"
    t.string   "doorways36"
    t.string   "adjustable"
    t.string   "total_living_levels"
    t.string   "building_name"
    t.string   "flood_zone"
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

  create_table "votes", :force => true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], :name => "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["votable_id", "votable_type"], :name => "index_votes_on_votable_id_and_votable_type"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], :name => "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
