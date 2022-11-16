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

ActiveRecord::Schema.define(version: 20221116112842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string   "type"
    t.integer  "no_of_emp"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emp_attendances", force: :cascade do |t|
    t.date     "status_date"
    t.time     "in_time"
    t.time     "out_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "total_hour"
  end

  create_table "emp_leaves", force: :cascade do |t|
    t.datetime "startdate"
    t.datetime "enddate"
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "phone_number",           default: "", null: false
    t.string   "address",                default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "gender",                 default: 0
    t.integer  "age"
    t.datetime "hire_date"
    t.datetime "date_of_birth"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "designation"
    t.string   "city"
    t.string   "country"
    t.integer  "martial_status",         default: 0
    t.string   "father_name"
    t.string   "mother_name"
    t.integer  "department_id"
    t.index ["department_id"], name: "index_employees_on_department_id", using: :btree
    t.index ["email"], name: "index_employees_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree
  end

end
