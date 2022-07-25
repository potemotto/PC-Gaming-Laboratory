# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_17_002856) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "aricles", force: :cascade do |t|
    t.integer "game_title_id"
    t.integer "type_id"
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "computers", force: :cascade do |t|
    t.integer "operating_system_id"
    t.integer "cpu_list_id"
    t.integer "gpu_list_id"
    t.string "name"
    t.integer "number_of_memories"
    t.integer "memory_capacity"
    t.integer "DirectX"
    t.integer "free_storage"
    t.integer "storage_type"
    t.integer "pc_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cpu_lists", force: :cascade do |t|
    t.integer "maker"
    t.string "name"
    t.integer "single_score"
    t.integer "multiscore"
    t.integer "clock"
    t.integer "number_of_cores"
    t.integer "number_of_threads"
    t.integer "year_of_release"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_titles", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "cpu_list_id"
    t.integer "gpu_list_id"
    t.integer "operating_system_id"
    t.string "name"
    t.integer "recommended_memory"
    t.integer "request_storage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gpu_lists", force: :cascade do |t|
    t.integer "maker"
    t.string "name"
    t.integer "score"
    t.integer "video_memory"
    t.integer "DirectX"
    t.integer "year_of_release"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publics", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "genre_id"
    t.integer "cpu_list_id"
    t.integer "gpu_list_id"
    t.integer "operating_system_id"
    t.string "name"
    t.integer "recommended_memory"
    t.integer "request_storage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_publics_on_email", unique: true
    t.index ["reset_password_token"], name: "index_publics_on_reset_password_token", unique: true
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.integer "bit_type"
    t.integer "DirectX"
    t.integer "year_of_release"
    t.integer "upper_memory_limit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
