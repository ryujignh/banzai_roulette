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

ActiveRecord::Schema.define(version: 20160109234158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_sessions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.string  "word"
    t.integer "wins"
    t.integer "loses"
    t.boolean "active"
  end

  add_index "game_sessions", ["game_id"], name: "index_game_sessions_on_game_id", using: :btree
  add_index "game_sessions", ["user_id"], name: "index_game_sessions_on_user_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string  "name"
    t.integer "round_number"
    t.boolean "round_open"
    t.string  "word"
    t.integer "players"
    t.integer "user_id"
  end

  add_index "games", ["user_id"], name: "index_games_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "facebook_token"
    t.string   "avat_url"
    t.string   "provider"
    t.string   "uid"
    t.datetime "oauth_expires_at"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_foreign_key "game_sessions", "games"
  add_foreign_key "game_sessions", "users"
end
