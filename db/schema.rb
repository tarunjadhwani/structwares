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

ActiveRecord::Schema.define(version: 20131223162807) do

  create_table "form_details", force: true do |t|
    t.string   "owner_name"
    t.string   "valuer_name"
    t.date     "agreed_date"
    t.integer  "ref_no"
    t.string   "bank"
    t.string   "situated_at"
    t.string   "location"
    t.integer  "valuation_place"
    t.string   "area_type"
    t.string   "property_type"
    t.date     "site_visit_date"
    t.string   "ownership"
    t.integer  "valuation_rate"
    t.integer  "build_up_area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "form_details", ["user_id"], name: "index_form_details_on_user_id"

  create_table "messages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_name"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
