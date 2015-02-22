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

ActiveRecord::Schema.define(version: 20150222123620) do

  create_table "facilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities_rooms", force: :cascade do |t|
    t.integer "facility_id"
    t.integer "room_id"
  end

  add_index "facilities_rooms", ["facility_id", "room_id"], name: "index_facilities_rooms_on_facility_id_and_room_id", unique: true

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "hotel"
    t.string   "link"
    t.float    "lat"
    t.float    "lon"
    t.integer  "min"
    t.integer  "max"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "img_url"
  end

end
