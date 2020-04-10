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

ActiveRecord::Schema.define(version: 2020_04_09_082738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tasks", force: :cascade do |t|
    t.integer "dantai_kbn", null: false
    t.string "enduser", limit: 50, null: false
    t.string "motouke", limit: 50
    t.text "naiyou"
    t.string "syubetu_kbn"
    t.date "renraku_d"
    t.time "renraku_t"
    t.date "sagyou_d"
    t.float "idou", default: 0.0
    t.integer "taiou_cd", null: false
    t.integer "del_flg", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dantai_kbn", "enduser"], name: "index_tasks_on_dantai_kbn_and_enduser"
    t.index ["motouke"], name: "index_tasks_on_motouke"
    t.index ["renraku_d"], name: "index_tasks_on_renraku_d"
    t.index ["sagyou_d"], name: "index_tasks_on_sagyou_d"
    t.index ["taiou_cd"], name: "index_tasks_on_taiou_cd"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_id", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["name_id"], name: "index_users_on_name_id", unique: true
  end

end
