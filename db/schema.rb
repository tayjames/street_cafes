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

ActiveRecord::Schema.define(version: 2020_02_04_224833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cafes", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "post_code"
    t.integer "number_of_chairs"
  end

  create_table "postal_codes", force: :cascade do |t|
    t.string "post_code"
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_postal_codes_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "post_code"
    t.integer "number_of_chairs"
    t.string "category"
    t.bigint "postal_code_id"
    t.index ["postal_code_id"], name: "index_restaurants_on_postal_code_id"
  end

  add_foreign_key "postal_codes", "restaurants"
  add_foreign_key "restaurants", "postal_codes"
end
