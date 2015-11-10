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

ActiveRecord::Schema.define(version: 20151110014616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", primary_key: "cat_id", force: :cascade do |t|
    t.string   "cat_title"
    t.integer  "cat_pages"
    t.integer  "cat_subcats"
    t.integer  "cat_files"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", primary_key: "cl_from", force: :cascade do |t|
    t.string   "cl_to"
    t.binary   "cl_sortkey"
    t.date     "cl_timestamp"
    t.binary   "cl_sortkey_prefix"
    t.binary   "cl_collation"
    t.string   "cl_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["cl_sortkey"], name: "index_links_on_cl_sortkey", using: :btree

end
