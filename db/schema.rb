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

ActiveRecord::Schema.define(version: 20151006010036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_categories", force: :cascade do |t|
    t.integer "article_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",         null: false
    t.string   "content",       null: false
    t.boolean  "published",     null: false
    t.boolean  "needs_sources", null: false
    t.integer  "wiki_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "user_wikis", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "wiki_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              default: "",    null: false
    t.string   "encrypted_password", default: "",    null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "admin",              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "wikis", force: :cascade do |t|
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
