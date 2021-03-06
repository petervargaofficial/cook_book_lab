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

ActiveRecord::Schema.define(version: 20140429001359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_quantities", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

  add_index "ingredients_quantities", ["ingredient_id"], name: "index_ingredients_quantities_on_ingredient_id", using: :btree
  add_index "ingredients_quantities", ["recipe_id"], name: "index_ingredients_quantities_on_recipe_id", using: :btree

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.string   "course"
    t.integer  "cooktime"
    t.integer  "servingsize"
    t.text     "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
