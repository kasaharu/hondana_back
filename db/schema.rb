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

ActiveRecord::Schema.define(version: 20140624143129) do

  create_table "bookrack_books", force: true do |t|
    t.integer  "bookrack_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookrack_books", ["book_id"], name: "index_bookrack_books_on_book_id", using: :btree
  add_index "bookrack_books", ["bookrack_id"], name: "index_bookrack_books_on_bookrack_id", using: :btree

  create_table "bookracks", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookracks", ["name"], name: "index_bookracks_on_name", unique: true, using: :btree

  create_table "books", force: true do |t|
    t.string   "name",       null: false
    t.string   "author"
    t.string   "category"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["name"], name: "index_books_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bookrack_id"
  end

  add_index "users", ["bookrack_id"], name: "index_users_on_bookrack_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
