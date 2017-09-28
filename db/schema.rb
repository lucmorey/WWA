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

ActiveRecord::Schema.define(version: 20170927235043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "callouts", force: :cascade do |t|
    t.string "name"
    t.string "body"
    t.string "city"
    t.string "tag"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "calloutpic_file_name"
    t.string "calloutpic_content_type"
    t.integer "calloutpic_file_size"
    t.datetime "calloutpic_updated_at"
    t.index ["user_id"], name: "index_callouts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profilepic_file_name"
    t.string "profilepic_content_type"
    t.integer "profilepic_file_size"
    t.datetime "profilepic_updated_at"
  end

  add_foreign_key "callouts", "users"
end
