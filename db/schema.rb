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

ActiveRecord::Schema.define(version: 20160916105343) do

  create_table "abouts", force: :cascade do |t|
    t.text     "aboutinfo",             limit: 65535
    t.string   "shopname",              limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id",               limit: 4
    t.string   "shopimg_file_name",     limit: 255
    t.string   "shopimg_content_type",  limit: 255
    t.integer  "shopimg_file_size",     limit: 4
    t.datetime "shopimg_updated_at"
    t.string   "shopimg1_file_name",    limit: 255
    t.string   "shopimg1_content_type", limit: 255
    t.integer  "shopimg1_file_size",    limit: 4
    t.datetime "shopimg1_updated_at"
    t.string   "shopimg2_file_name",    limit: 255
    t.string   "shopimg2_content_type", limit: 255
    t.integer  "shopimg2_file_size",    limit: 4
    t.datetime "shopimg2_updated_at"
    t.string   "shopimg3_file_name",    limit: 255
    t.string   "shopimg3_content_type", limit: 255
    t.integer  "shopimg3_file_size",    limit: 4
    t.datetime "shopimg3_updated_at"
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zipcode",    limit: 255
    t.string   "mobileno",   limit: 255
    t.string   "landlineno", limit: 255
    t.string   "emailid",    limit: 255
    t.string   "website",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
