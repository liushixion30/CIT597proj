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

ActiveRecord::Schema.define(version: 20150418160448) do

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["restaurant_id"], name: "index_comments_on_restaurant_id"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "operator"
    t.string   "accept_sna"
    t.string   "accept_fmn"
    t.string   "destribute"
    t.string   "only_redee"
    t.string   "ebt_machin"
    t.string   "day_time"
    t.decimal  "zip_code"
    t.decimal  "lon"
    t.decimal  "lat"
    t.decimal  "x"
    t.decimal  "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
