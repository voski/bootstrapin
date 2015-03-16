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

ActiveRecord::Schema.define(version: 20150316080040) do

  create_table "spaces", force: true do |t|
    t.string   "user_id",     null: false
    t.string   "name",        null: false
    t.string   "address",     null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spaces", ["address"], name: "index_spaces_on_address", unique: true
  add_index "spaces", ["user_id"], name: "index_spaces_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest",             null: false
    t.string   "session_token",               null: false
    t.integer  "counter",         default: 0
  end

end
