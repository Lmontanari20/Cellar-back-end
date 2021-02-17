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

ActiveRecord::Schema.define(version: 2021_02_16_230502) do

  create_table "bottles", force: :cascade do |t|
    t.float "price"
    t.integer "wine_id"
    t.integer "row"
    t.integer "column"
    t.integer "section_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "size"
    t.integer "user_id"
    t.index ["section_id"], name: "index_bottles_on_section_id"
    t.index ["wine_id"], name: "index_bottles_on_wine_id"
  end

  create_table "cellars", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cellars_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.integer "cellar_id", null: false
    t.integer "rows"
    t.integer "columns"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "x"
    t.integer "y"
    t.integer "user_id"
    t.index ["cellar_id"], name: "index_sections_on_cellar_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "wineType"
    t.string "winery"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cellars", "users"
  add_foreign_key "sections", "cellars"
end
