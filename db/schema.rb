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

ActiveRecord::Schema[7.0].define(version: 2023_04_20_203916) do
  create_table "consumables", force: :cascade do |t|
    t.string "name"
    t.string "qty"
    t.string "link"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tool_id"
    t.index ["tool_id"], name: "index_consumables_on_tool_id"
  end

  create_table "consumables_tools", id: false, force: :cascade do |t|
    t.integer "tool_id", null: false
    t.integer "consumable_id", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "metal"
    t.string "dimension"
    t.string "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
    t.string "brand"
  end

  add_foreign_key "consumables", "tools"
end
