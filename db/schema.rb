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

ActiveRecord::Schema.define(version: 20150222122833) do

  create_table "facilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "facilities", ["room_id"], name: "index_facilities_on_room_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "hotel"
    t.string   "link"
    t.decimal  "lat"
    t.decimal  "lon"
    t.integer  "min"
    t.integer  "max"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "img_url"
  end

end
