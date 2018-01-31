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

ActiveRecord::Schema.define(version: 20180131034538) do

  create_table "datapoints", force: :cascade do |t|
    t.decimal "value"
    t.datetime "measured_at"
    t.integer "experiment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experiment_id"], name: "index_datapoints_on_experiment_id"
  end

  create_table "experiments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "completed", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
