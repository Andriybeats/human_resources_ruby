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

ActiveRecord::Schema.define(version: 2019_04_01_142714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "date_birthday"
    t.string "city_birthday"
    t.string "address"
    t.date "start_work"
    t.bigint "position_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["position_id"], name: "index_employees_on_position_id"
  end

  create_table "histories", force: :cascade do |t|
    t.date "date_start"
    t.date "date_end"
    t.bigint "employee_id"
    t.bigint "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_histories_on_employee_id"
    t.index ["position_id"], name: "index_histories_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.float "sallary"
    t.integer "vacations_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacations", force: :cascade do |t|
    t.date "date_start"
    t.date "date_end"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_vacations_on_employee_id"
  end

  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "positions"
  add_foreign_key "histories", "employees"
  add_foreign_key "histories", "positions"
  add_foreign_key "vacations", "employees"
end
