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

ActiveRecord::Schema.define(version: 20160320023731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupons", force: :cascade do |t|
    t.string   "title"
    t.string   "value"
    t.string   "code"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "coupons", ["service_id"], name: "index_coupons_on_service_id", using: :btree

  create_table "homes", force: :cascade do |t|
    t.text     "feature_image"
    t.string   "feature_name"
    t.text     "feature_link"
    t.text     "deal_of_the_day_description"
    t.text     "deal_of_the_day_image"
    t.string   "feature_two_headline"
    t.text     "feature_two_image"
    t.text     "feature_two_description"
    t.text     "feature_two_link"
    t.text     "feature_three_image"
    t.string   "feature_three_headline"
    t.text     "feature_three_description"
    t.text     "feature_three_link"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "coupons", "services"
end
