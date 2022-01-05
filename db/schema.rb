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

ActiveRecord::Schema.define(version: 2022_01_04_032154) do

  create_table "amenities", force: :cascade do |t|
    t.text "amenity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.text "street_address"
    t.text "unit_number"
    t.text "city"
    t.text "state"
    t.text "country"
    t.text "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_type_id"
    t.index ["property_type_id"], name: "index_properties_on_property_type_id"
  end

  create_table "property_amenities", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "amenity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["amenity_id"], name: "index_property_amenities_on_amenity_id"
    t.index ["property_id"], name: "index_property_amenities_on_property_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.text "property_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "properties", "property_types"
  add_foreign_key "property_amenities", "amenities"
  add_foreign_key "property_amenities", "properties"
end
