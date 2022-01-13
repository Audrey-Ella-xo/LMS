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

ActiveRecord::Schema.define(version: 2022_01_13_143832) do

  create_table "loaners", force: :cascade do |t|
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.string "amt_words"
    t.string "purpose"
    t.date "start_date"
    t.date "end_date"
    t.string "pay_mode"
    t.string "rate"
    t.integer "amt_owed"
    t.string "bank_name"
    t.decimal "amount", precision: 6, scale: 2
    t.index ["user_id"], name: "index_loaners_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "DOB"
    t.string "Address"
    t.string "workplace_address"
    t.string "workplace"
    t.integer "monthly_net"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.string "title"
    t.string "marital_status"
    t.string "gender"
    t.string "phone"
    t.string "nationality"
    t.string "acc_name"
    t.string "bank_name"
    t.string "acc_number"
    t.string "branch_name"
    t.string "emp_phone"
    t.string "emp_duration"
    t.string "job_title"
    t.integer "other_income"
    t.string "ref_title"
    t.string "ref_gender"
    t.string "ref_firstname"
    t.string "ref_lastname"
    t.string "ref_address"
    t.string "ref_phone"
    t.string "ref_email"
    t.string "image"
    t.string "attachment"
    t.string "identification"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "loaners", "users"
  add_foreign_key "profiles", "users"
end
