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

ActiveRecord::Schema.define(version: 20150625215852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.string   "course_summary"
    t.integer  "enrollment_cap"
    t.integer  "location_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "courses", ["location_id"], name: "index_courses_on_location_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.date     "hire_date"
    t.integer  "company_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id", using: :btree
  add_index "employees", ["location_id"], name: "index_employees_on_location_id", using: :btree

  create_table "employees_courses", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "course_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employees_courses", ["course_id"], name: "index_employees_courses_on_course_id", using: :btree
  add_index "employees_courses", ["employee_id"], name: "index_employees_courses_on_employee_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["company_id"], name: "index_locations_on_company_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.string   "description"
    t.string   "in_stock"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "products_orders", force: :cascade do |t|
    t.integer  "quantity",   default: 0
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "products_orders", ["order_id"], name: "index_products_orders_on_order_id", using: :btree
  add_index "products_orders", ["product_id"], name: "index_products_orders_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_foreign_key "courses", "locations"
  add_foreign_key "employees", "companies"
  add_foreign_key "employees", "locations"
  add_foreign_key "employees_courses", "courses"
  add_foreign_key "employees_courses", "employees"
  add_foreign_key "locations", "companies"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "users"
  add_foreign_key "products_orders", "orders"
  add_foreign_key "products_orders", "products"
end
