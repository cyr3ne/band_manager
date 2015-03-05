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

ActiveRecord::Schema.define(version: 20150305004816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "band_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.integer "band_id_id"     #Add relation, index true
    t.integer "venue_id_id"
    t.integer "band_id"     #t.belongs_to, index true  but no relation found
    t.integer "venue_id"    #t.belongs_to, index true but no relation found
  end

  add_index "concerts", ["band_id_id"], name: "index_concerts_on_band_id_id", using: :btree
  add_index "concerts", ["venue_id_id"], name: "index_concerts_on_venue_id_id", using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "venue_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end