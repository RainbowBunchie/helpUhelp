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

ActiveRecord::Schema.define(version: 20180423092651) do

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text "description"
    t.date "date"
    t.time "time"
    t.string "place"
    t.boolean "assigned"
    t.integer "no_of_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "task_id", null: false
    t.boolean "confirmed"
    t.index ["task_id", "user_id"], name: "index_tasks_users_on_task_id_and_user_id"
    t.index ["user_id", "task_id"], name: "index_tasks_users_on_user_id_and_task_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "role_id_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "telephone"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id_id"], name: "index_users_on_role_id_id"
  end

end
