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

ActiveRecord::Schema.define(version: 20171205160029) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jam_sessions", force: :cascade do |t|
    t.string "title"
    t.datetime "datetime"
    t.string "description"
    t.integer "city_id"
    t.integer "genre_id"
    t.integer "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musician_instruments", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "instrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musician_jams", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "jam_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.boolean "is_host"
    t.boolean "is_musician"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
