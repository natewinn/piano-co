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

ActiveRecord::Schema.define(version: 20140620051737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alt_addresses", force: true do |t|
    t.boolean  "primary"
    t.string   "address_type"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address_1"
  end

  create_table "alt_contacts", force: true do |t|
    t.boolean  "primary"
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alt_emails", force: true do |t|
    t.boolean  "primary"
    t.string   "email_type"
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alt_phones", force: true do |t|
    t.boolean  "primary"
    t.string   "phone_type"
    t.string   "number"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "time_zone"
    t.string   "address_1"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "buffer_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "organization_name"
    t.text     "notes"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "city"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "phone_type"
    t.string   "phone"
    t.string   "salutation"
    t.string   "e_address"
    t.string   "e_address_type"
    t.string   "zip_code"
  end

  create_table "events", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "event_color"
    t.boolean  "full_day"
    t.integer  "customer_id"
    t.boolean  "confirmed"
    t.boolean  "paid"
  end

  create_table "pianos", force: true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "size"
    t.string   "serial_number"
    t.string   "piano_type"
    t.string   "company_notes"
    t.integer  "service_interval"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "schedules", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "buffer_time"
    t.datetime "day_off"
    t.datetime "day_start"
    t.string   "event_color"
    t.string   "all_day_event"
    t.integer  "company_id"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "cost"
    t.integer  "duration"
    t.string   "category"
    t.boolean  "customer_view"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "company_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
