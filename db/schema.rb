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

ActiveRecord::Schema[7.1].define(version: 2023_11_29_170023) do
  create_table "authors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "books_count"
    t.boolean "active"
  end

  create_table "books", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "publish_year"
    t.bigint "writer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.index ["writer_id"], name: "index_books_on_writer_id"
  end

  create_table "capital_cities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "image_type"
    t.bigint "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_type", "image_id"], name: "index_cities_on_image"
  end

  create_table "continents", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
  end

  create_table "employees", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "fk_rails_b82b548cdd"
  end

  create_table "fruits", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "fruit_name"
    t.integer "serial_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quantity"
    t.bigint "voters_id", null: false
    t.index ["serial_no"], name: "index_fruits_on_serial_no"
    t.index ["voters_id"], name: "index_fruits_on_voters_id"
  end

  create_table "images", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "employee_id"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_images_on_employee_id"
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable"
  end

  create_table "magazines", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "book_id"
    t.bigint "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_publishers_on_book_id"
    t.index ["store_id"], name: "index_publishers_on_store_id"
  end

  create_table "states", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

  create_table "teachers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "students_count", default: 0
  end

  create_table "trains", primary_key: ["name", "train_no"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "train_no", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", comment: "this is voter comment", force: :cascade do |t|
    t.string "name"
    t.integer "age", comment: "18 above only"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dob_type", null: false
    t.bigint "dob_id", null: false
    t.index ["age"], name: "new vote"
    t.index ["dob_type", "dob_id"], name: "index_voters_on_dob"
    t.check_constraint "`age` > 18", name: "age_check"
  end

  add_foreign_key "books", "authors", column: "writer_id"
  add_foreign_key "employees", "stores"
  add_foreign_key "publishers", "books"
  add_foreign_key "publishers", "stores"
  add_foreign_key "students", "teachers"
end
