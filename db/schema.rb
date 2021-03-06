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

ActiveRecord::Schema.define(version: 20150118191651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "companies", force: true do |t|
    t.string  "company_name"
    t.string  "company_description"
    t.integer "user_id"
    t.string  "contact_name"
    t.string  "contact_surname"
    t.string  "contact_email"
    t.string  "contact_telephone"
    t.string  "company_address"
    t.string  "company_address2"
  end

  create_table "cvs", force: true do |t|
    t.integer "employee_id"
    t.date    "birthdate"
    t.string  "location"
    t.string  "email"
    t.string  "telephone"
  end

  create_table "educations", force: true do |t|
    t.string  "name"
    t.integer "cv_id"
  end

  create_table "employees", force: true do |t|
    t.string  "name"
    t.string  "surname"
    t.integer "user_id"
  end

  create_table "experiences", force: true do |t|
    t.string  "name"
    t.integer "cv_id"
  end

  create_table "hobbies", force: true do |t|
    t.string  "name"
    t.integer "cv_id"
  end

  create_table "jobs", force: true do |t|
    t.string  "name"
    t.integer "company_id"
  end

  create_table "languages", force: true do |t|
    t.string  "name"
    t.integer "cv_id"
  end

  create_table "requirements", force: true do |t|
    t.string  "name"
    t.integer "job_id"
  end

  create_table "skills", force: true do |t|
    t.string  "name"
    t.integer "cv_id"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.integer  "company_id"
    t.integer  "employee_id"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
