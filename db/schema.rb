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

ActiveRecord::Schema.define(version: 20160619025530) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "event_id",   null: false
    t.string   "message",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "username"
  end

  create_table "events", force: :cascade do |t|
    t.integer  "users_id"
    t.string   "address",                  null: false
    t.integer  "capacity",                 null: false
    t.string   "title",                    null: false
    t.string   "description",              null: false
    t.integer  "price",                    null: false
    t.string   "event_date",               null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image_file",  default: ""
    t.string   "movie_genre"
    t.string   "cuisine"
    t.string   "start_time"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                         null: false
    t.string   "password_hash",                 null: false
    t.boolean  "approver",      default: false, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "name"
  end

end
