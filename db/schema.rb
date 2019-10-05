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

ActiveRecord::Schema.define(version: 2019_10_04_191345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auctionlistings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attached"
  end

  create_table "auctionnotices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "auction"
    t.integer "status", default: 0
  end

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.integer "province_id"
    t.integer "region_id"
    t.integer "cod_treasury"
    t.integer "conara_sii"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notice_selections", force: :cascade do |t|
    t.text "auction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.time "hour"
    t.integer "warranty"
    t.string "name"
    t.float "fee"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realties", force: :cascade do |t|
    t.integer "commune_id"
    t.string "street"
    t.integer "number_unit"
    t.string "unit_estate"
    t.integer "street_type_id"
    t.string "population_villa"
    t.integer "condominium_id"
    t.integer "property_type"
    t.integer "apple"
    t.integer "property"
    t.text "name_realty"
    t.integer "latitude"
    t.integer "longitude"
    t.float "mt2_land"
    t.float "mt2_built"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.integer "number_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 4
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
