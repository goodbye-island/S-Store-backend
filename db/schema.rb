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

ActiveRecord::Schema.define(version: 20161104032315) do

  create_table "Class", id: false, force: :cascade do |t|
    t.integer "Class_ID",        limit: 4,             null: false
    t.integer "Dept_ID",         limit: 4,             null: false
    t.integer "Term_ID",         limit: 4,             null: false
    t.integer "Year",            limit: 4,             null: false
    t.integer "Teacher_User_ID", limit: 4
    t.integer "Section",         limit: 4, default: 0, null: false
    t.integer "CRN",             limit: 4
    t.integer "Syl_ID",          limit: 4
    t.integer "Day_ID",          limit: 4
    t.time    "Day_Time"
    t.integer "Day_Len",         limit: 4
    t.integer "Lab_ID",          limit: 4
    t.time    "Lab_Time"
    t.integer "Lab_len",         limit: 4
  end

  create_table "Class_Days", primary_key: "Day_ID", force: :cascade do |t|
    t.text "Days", limit: 65535, null: false
  end

  create_table "Course", id: false, force: :cascade do |t|
    t.integer "Class_ID",     limit: 4,          null: false
    t.integer "Dept_ID",      limit: 4,          null: false
    t.text    "Course_Title", limit: 65535,      null: false
    t.text    "Description",  limit: 4294967295, null: false
  end

  create_table "Dept", primary_key: "Dept_ID", force: :cascade do |t|
    t.text "Dept_Title",     limit: 65535, null: false
    t.text "Dept_Title_Abb", limit: 65535
  end

  create_table "Keywords", primary_key: "Key_ID", force: :cascade do |t|
    t.integer "Class_ID", limit: 4,     null: false
    t.text    "Keyword",  limit: 65535, null: false
  end

  create_table "Roles", primary_key: "Role", force: :cascade do |t|
    t.text "Description", limit: 65535, null: false
  end

  create_table "Semesters", id: false, force: :cascade do |t|
    t.integer "Term_ID",       limit: 4, null: false
    t.integer "Year",          limit: 4, null: false
    t.date    "Start_Date",              null: false
    t.date    "End_Date",                null: false
    t.date    "Last_Reg_Date",           null: false
    t.date    "With_Date",               null: false
    t.boolean "Status_ID",               null: false
  end

  create_table "Status", primary_key: "Status_ID", force: :cascade do |t|
    t.text "Status", limit: 65535, null: false
  end

  create_table "Syllabus", primary_key: "Syl_ID", force: :cascade do |t|
    t.binary "Syllabus", limit: 4294967295, null: false
  end

  create_table "Term", primary_key: "Term_ID", force: :cascade do |t|
    t.text "Term", limit: 65535, null: false
  end

  create_table "User", primary_key: "User_ID", force: :cascade do |t|
    t.text    "Email",      limit: 65535, null: false
    t.text    "Honorific",  limit: 65535
    t.text    "First_Name", limit: 65535, null: false
    t.text    "Last_Name",  limit: 65535, null: false
    t.integer "Role",       limit: 4,     null: false
    t.boolean "Status_ID",                null: false
  end

  add_index "User", ["Role"], name: "Role", using: :btree
  add_index "User", ["Status_ID"], name: "Status", using: :btree

  create_table "V_Class_Course_1", id: false, force: :cascade do |t|
    t.integer "Class_ID",        limit: 4,                      null: false
    t.integer "Dept_ID",         limit: 4,                      null: false
    t.text    "Dept_Title",      limit: 65535,                  null: false
    t.text    "Course_Title",    limit: 65535,                  null: false
    t.text    "Description",     limit: 4294967295,             null: false
    t.integer "Term_ID",         limit: 4,                      null: false
    t.text    "Term",            limit: 65535,                  null: false
    t.integer "Year",            limit: 4,                      null: false
    t.integer "Teacher_User_ID", limit: 4
    t.integer "Section",         limit: 4,          default: 0, null: false
    t.integer "CRN",             limit: 4
    t.integer "Syl_ID",          limit: 4
    t.integer "Day_ID",          limit: 4
    t.text    "Class_Day",       limit: 65535,                  null: false
    t.time    "Day_Time"
    t.integer "Day_Len",         limit: 4
    t.integer "Lab_ID",          limit: 4
    t.time    "Lab_Time"
    t.integer "Lab_Len",         limit: 4
  end

  create_table "V_User_Roles_Status", id: false, force: :cascade do |t|
    t.integer "User_ID",     limit: 4,     default: 0, null: false
    t.text    "Email",       limit: 65535,             null: false
    t.text    "First_Name",  limit: 65535,             null: false
    t.text    "Last_Name",   limit: 65535,             null: false
    t.integer "Role",        limit: 4,                 null: false
    t.text    "Description", limit: 65535,             null: false
    t.boolean "Status_ID",                             null: false
    t.text    "Status",      limit: 65535,             null: false
  end

  create_table "capstone_connects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_views", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classmodels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_views", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dept_views", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semester_views", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "syllabus_rbs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
