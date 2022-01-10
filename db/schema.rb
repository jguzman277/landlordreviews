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

ActiveRecord::Schema.define(version: 2022_01_07_234102) do

  create_table "amenities", force: :cascade do |t|
    t.string "amenity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bedrooms", force: :cascade do |t|
    t.string "bedroom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "landlords", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_landlords_on_email", unique: true
    t.index ["reset_password_token"], name: "index_landlords_on_reset_password_token", unique: true
  end

  create_table "properties", force: :cascade do |t|
    t.string "street_address"
    t.string "unit_number"
    t.string "city"
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_type_id"
    t.integer "full_bathrooms"
    t.integer "half_bathrooms"
    t.integer "bedroom_id"
    t.integer "state_id"
    t.integer "country_id"
    t.text "description"
    t.index ["bedroom_id"], name: "index_properties_on_bedroom_id"
    t.index ["country_id"], name: "index_properties_on_country_id"
    t.index ["property_type_id"], name: "index_properties_on_property_type_id"
    t.index ["state_id"], name: "index_properties_on_state_id"
  end

  create_table "property_amenities", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "amenity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["amenity_id"], name: "index_property_amenities_on_amenity_id"
    t.index ["property_id"], name: "index_property_amenities_on_property_id"
  end

  create_table "property_rooms", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_property_rooms_on_property_id"
    t.index ["room_id"], name: "index_property_rooms_on_room_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "property_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "properties", "bedrooms"
  add_foreign_key "properties", "countries"
  add_foreign_key "properties", "property_types"
  add_foreign_key "properties", "states"
  add_foreign_key "property_amenities", "amenities"
  add_foreign_key "property_amenities", "properties"
  add_foreign_key "property_rooms", "properties"
  add_foreign_key "property_rooms", "rooms"
end
