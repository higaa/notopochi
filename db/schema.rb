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

ActiveRecord::Schema.define(version: 20160124073327) do

  create_table "noto_poti_data", force: :cascade do |t|
    t.integer  "potidataid"
    t.integer  "userid"
    t.string   "startpositionname"
    t.string   "endpositionname"
    t.string   "comment"
    t.string   "startpicturepath"
    t.string   "endpicturepath"
    t.datetime "startdatetime"
    t.datetime "enddatetime"
    t.boolean  "poticommit"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "noto_poti_datum_details", force: :cascade do |t|
    t.integer  "potidataid"
    t.string   "startposition"
    t.string   "endposition"
    t.integer  "potidataseqnum"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "noto_poti_users", force: :cascade do |t|
    t.integer  "userid"
    t.string   "loginname"
    t.string   "loginpassword"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
