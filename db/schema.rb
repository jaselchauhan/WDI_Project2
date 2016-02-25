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

ActiveRecord::Schema.define(version: 20160225234653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "image"
    t.string "user_type"
    t.string "bio"
    t.string "password_digest"
  end

  create_table "walls", force: :cascade do |t|
    t.boolean "is_painted"
    t.string  "city"
    t.string  "image"
    t.integer "artist_id"
    t.integer "owner_id"
    t.string  "title"
    t.float   "lat"
    t.float   "lng"
    t.string  "address1"
    t.string  "address2"
    t.string  "postcode"
  end

end
