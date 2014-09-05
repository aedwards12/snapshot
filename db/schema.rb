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

ActiveRecord::Schema.define(version: 20140904215836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: true do |t|
    t.integer  "user_id"
    t.integer  "listing_id"
    t.datetime "booked_from"
    t.datetime "booked_to"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.integer  "user_id"
    t.datetime "available_from"
    t.datetime "available_to"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "photographable_id"
    t.string   "photographable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tagables", force: true do |t|
    t.integer "listing_id"
    t.integer "tag_id"
  end

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "testimonials", force: true do |t|
    t.integer  "user_id"
    t.integer  "listing_id"
    t.string   "title"
    t.integer  "rating"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
