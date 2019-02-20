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

ActiveRecord::Schema.define(version: 20190220013452) do

  create_table "advts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image",      limit: 255
    t.integer  "status",     limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "intros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "desc",       limit: 255
    t.text     "content",    limit: 65535
    t.integer  "status",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "service_items", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "service_oid", limit: 4
    t.text     "content",     limit: 65535
    t.string   "desc",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "status",     limit: 4
    t.integer  "od",         limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
