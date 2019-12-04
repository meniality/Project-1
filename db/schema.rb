# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_04_032217) do

  create_table "climber_mountains", force: :cascade do |t|
    t.integer "climber_id"
    t.integer "mountain_id"
    t.index ["climber_id"], name: "index_climber_mountains_on_climber_id"
    t.index ["mountain_id"], name: "index_climber_mountains_on_mountain_id"
  end

  create_table "climbers", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "age"
    t.string "location"
    t.string "email"
    t.string "phone_number"
  end

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.integer "climber_id"
    t.index ["climber_id"], name: "index_gears_on_climber_id"
  end

  create_table "mountains", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "easy_climbs"
    t.integer "medium_climbs"
    t.integer "hard_climbs"
  end

  add_foreign_key "climber_mountains", "climbers"
  add_foreign_key "climber_mountains", "mountains"
  add_foreign_key "gears", "climbers"
end
