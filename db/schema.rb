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

ActiveRecord::Schema.define(version: 2018_09_18_101704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_langs", force: :cascade do |t|
    t.string "name"
    t.string "version"
    t.index ["id"], name: "index_code_langs_on_id"
    t.index ["name"], name: "index_code_langs_on_name"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "sticker_id"
    t.bigint "user_id"
    t.boolean "mark", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sticker_id"], name: "index_ratings_on_sticker_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "sticker_tags", force: :cascade do |t|
    t.bigint "sticker_id"
    t.bigint "tag_id"
    t.index ["sticker_id"], name: "index_sticker_tags_on_sticker_id"
    t.index ["tag_id"], name: "index_sticker_tags_on_tag_id"
  end

  create_table "stickers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "code"
    t.bigint "user_id"
    t.bigint "code_lang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_lang_id"], name: "index_stickers_on_code_lang_id"
    t.index ["id"], name: "index_stickers_on_id"
    t.index ["user_id"], name: "index_stickers_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.index ["id"], name: "index_tags_on_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "ratings", "stickers"
  add_foreign_key "ratings", "users"
  add_foreign_key "sticker_tags", "stickers"
  add_foreign_key "sticker_tags", "tags"
  add_foreign_key "stickers", "code_langs"
  add_foreign_key "stickers", "users"
end
