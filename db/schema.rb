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

ActiveRecord::Schema.define(version: 20171025115844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conservations", force: :cascade do |t|
    t.string "user1"
    t.string "user2"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user1_name"
    t.string "user2_name"
    t.string "is_read"
    t.string "user1_read"
    t.string "user2_read"
  end

  create_table "conservations_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "conservation_id", null: false
    t.index ["user_id", "conservation_id"], name: "index_conservations_users_on_user_id_and_conservation_id"
  end

  create_table "friends", force: :cascade do |t|
    t.string "user1"
    t.string "user2"
    t.string "is_block"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends_users", id: false, force: :cascade do |t|
    t.bigint "friend_id", null: false
    t.bigint "user_id", null: false
    t.index ["friend_id", "user_id"], name: "index_friends_users_on_friend_id_and_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "sender"
    t.string "avatar"
    t.string "content"
    t.bigint "conservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sender_name"
    t.string "is_read"
    t.datetime "read_at"
    t.index ["conservation_id"], name: "index_messages_on_conservation_id"
  end

  create_table "user_conservations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "conservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conservation_id"], name: "index_user_conservations_on_conservation_id"
    t.index ["user_id"], name: "index_user_conservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "password_digest"
  end

  add_foreign_key "messages", "conservations"
end
