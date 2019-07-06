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

ActiveRecord::Schema.define(version: 2019_07_06_111000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "year_construction", default: 0, null: false
    t.integer "bed_count", default: 0, null: false
    t.integer "bath_count", default: 0, null: false
    t.integer "toilet_count", default: 0, null: false
    t.integer "garage_count", default: 0, null: false
    t.float "plot_area", default: 0.0, null: false
    t.boolean "furnished", default: false
    t.boolean "sold", default: false
    t.boolean "reserved", default: false
    t.boolean "archived", default: false
    t.boolean "visible", default: false
    t.boolean "for_rent", default: false
    t.boolean "for_sale", default: false
    t.boolean "featured", default: false
    t.float "price", default: 0.0
    t.float "commission", default: 0.0
    t.string "street_no"
    t.string "street_name"
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "province"
    t.string "region"
    t.string "country"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.float "constructed_area", default: 0.0, null: false
    t.string "property_type"
  end

end
