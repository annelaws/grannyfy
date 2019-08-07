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

ActiveRecord::Schema.define(version: 2019_08_07_063339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "grandma_id"
    t.bigint "user_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grandma_id"], name: "index_bookings_on_grandma_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "grandma_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "grandma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grandma_id"], name: "index_grandma_skills_on_grandma_id"
    t.index ["skill_id"], name: "index_grandma_skills_on_skill_id"
  end

  create_table "grandmas", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "location"
    t.string "avatar"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_grandmas_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "booking_id"
    t.text "content"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "location"
    t.string "avatar"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "grandmas"
  add_foreign_key "bookings", "users"
  add_foreign_key "grandma_skills", "grandmas"
  add_foreign_key "grandma_skills", "skills"
  add_foreign_key "grandmas", "users"
  add_foreign_key "reviews", "bookings"
end
