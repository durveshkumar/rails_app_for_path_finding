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

ActiveRecord::Schema.define(version: 20151223060134) do

  create_table "logistics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.decimal  "pick_lat",   precision: 15, scale: 7
    t.decimal  "pick_lng",   precision: 15, scale: 7
    t.datetime "pick_time"
    t.time     "pick_range"
    t.decimal  "drop_lat",   precision: 15, scale: 7
    t.decimal  "drop_lng",   precision: 15, scale: 7
    t.datetime "drop_time"
    t.time     "drop_range"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
    t.string   "address",     limit: 255
    t.text     "description", limit: 65535
    t.string   "title",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
