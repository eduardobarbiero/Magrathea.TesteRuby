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

ActiveRecord::Schema.define(version: 2019_02_14_035401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "profile_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "integration_id"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_hashtags_on_name", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "hashtag_id"
    t.bigint "author_id"
    t.string "text"
    t.datetime "publication"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "integration_id"
    t.index ["author_id"], name: "index_messages_on_author_id"
    t.index ["hashtag_id"], name: "index_messages_on_hashtag_id"
  end

  add_foreign_key "messages", "authors"
  add_foreign_key "messages", "hashtags"
end
