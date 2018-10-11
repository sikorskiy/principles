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

ActiveRecord::Schema.define(version: 2018_10_11_021153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenge_notes", force: :cascade do |t|
    t.string "body"
    t.string "why_answer"
    t.bigint "user_day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_day_id"], name: "index_challenge_notes_on_user_day_id"
  end

  create_table "daily_tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "done"
    t.string "result_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.date "day"
    t.index ["user_id"], name: "index_daily_tasks_on_user_id"
  end

  create_table "days", force: :cascade do |t|
    t.date "day"
    t.bigint "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["week_id"], name: "index_days_on_week_id"
  end

  create_table "fail_notes", force: :cascade do |t|
    t.string "body"
    t.string "why_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "day"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_fail_notes_on_user_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "body"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "rule_text"
    t.bigint "user_id"
    t.date "day"
    t.index ["user_id"], name: "index_rules_on_user_id"
  end

  create_table "success_notes", force: :cascade do |t|
    t.string "body"
    t.string "why_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.date "day"
    t.index ["user_id"], name: "index_success_notes_on_user_id"
  end

  create_table "taggizations", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "rule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rule_id"], name: "index_taggizations_on_rule_id"
    t.index ["tag_id"], name: "index_taggizations_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_days", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "day"
    t.index ["day_id"], name: "index_user_days_on_day_id"
    t.index ["user_id"], name: "index_user_days_on_user_id"
  end

  create_table "user_weeks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "week_start"
    t.index ["user_id"], name: "index_user_weeks_on_user_id"
    t.index ["week_id"], name: "index_user_weeks_on_week_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weekly_tasks", force: :cascade do |t|
    t.bigint "user_week_id"
    t.string "name"
    t.string "description"
    t.boolean "done"
    t.integer "priority"
    t.string "result_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_week_id"], name: "index_weekly_tasks_on_user_week_id"
  end

  create_table "weeks", force: :cascade do |t|
    t.date "start"
    t.date "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "challenge_notes", "user_days"
  add_foreign_key "daily_tasks", "users"
  add_foreign_key "days", "weeks"
  add_foreign_key "rules", "users"
  add_foreign_key "taggizations", "rules"
  add_foreign_key "taggizations", "tags"
  add_foreign_key "user_days", "days"
  add_foreign_key "user_days", "users"
  add_foreign_key "user_weeks", "users"
  add_foreign_key "user_weeks", "weeks"
  add_foreign_key "weekly_tasks", "user_weeks"
end
