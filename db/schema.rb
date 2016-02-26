# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160226012019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "student_array", default: [],              array: true
  end

  add_index "classrooms", ["student_id"], name: "index_classrooms_on_student_id", using: :btree
  add_index "classrooms", ["teacher_id"], name: "index_classrooms_on_teacher_id", using: :btree

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "common_core"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "username"
    t.string   "password_digest"
    t.string   "school"
    t.string   "grade"
    t.integer  "teacher_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "classroom_id"
  end

  add_index "students", ["classroom_id"], name: "index_students_on_classroom_id", using: :btree
  add_index "students", ["teacher_id"], name: "index_students_on_teacher_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "school"
    t.string   "grade"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "student_id"
  end

  add_index "teachers", ["student_id"], name: "index_teachers_on_student_id", using: :btree

  add_foreign_key "classrooms", "students"
  add_foreign_key "classrooms", "teachers"
  add_foreign_key "students", "classrooms"
  add_foreign_key "students", "teachers"
  add_foreign_key "teachers", "students"
end
