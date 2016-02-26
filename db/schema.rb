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

ActiveRecord::Schema.define(version: 20160226093251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dives", force: :cascade do |t|
    t.integer  "number"
    t.date     "date"
    t.time     "timein"
    t.time     "timeout"
    t.integer  "depth"
    t.integer  "air_start"
    t.integer  "air_end"
    t.string   "nitrox"
    t.string   "temperature"
    t.integer  "weight"
    t.string   "computer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "place_id"
  end

  add_index "dives", ["place_id"], name: "index_dives_on_place_id", using: :btree
  add_index "dives", ["user_id"], name: "index_dives_on_user_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "city"
    t.string   "sites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "certification"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_foreign_key "dives", "places"
  add_foreign_key "dives", "users"
end
