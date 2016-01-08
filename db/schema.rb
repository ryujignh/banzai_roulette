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

ActiveRecord::Schema.define(version: 20160108045732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "table_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "table_id"
    t.string  "word"
    t.boolean "loser"
  end

  add_index "table_users", ["table_id"], name: "index_table_users_on_table_id", using: :btree
  add_index "table_users", ["user_id"], name: "index_table_users_on_user_id", using: :btree

  create_table "tables", force: :cascade do |t|
    t.string  "title"
    t.string  "giphy_url"
    t.boolean "posted_to_facebook"
  end

  create_table "users", force: :cascade do |t|
    t.string "facebook_token"
    t.string "avat_url"
    t.string "provider"
    t.string "uid"
    t.string "name"
  end

  add_foreign_key "table_users", "tables"
  add_foreign_key "table_users", "users"
end
