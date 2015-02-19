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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "country"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "season"
  end

  create_table "packs", force: :cascade do |t|
    t.integer "item_id"
    t.integer "trip_id"
    t.integer "quantity"
    t.string  "name"
  end

  add_index "packs", ["item_id"], name: "index_packs_on_item_id"
  add_index "packs", ["trip_id"], name: "index_packs_on_trip_id"

  create_table "trips", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.integer "city_id"
    t.integer "duration"
    t.string  "season"
  end

  add_index "trips", ["city_id"], name: "index_trips_on_city_id"
  add_index "trips", ["user_id"], name: "index_trips_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
  end

end
