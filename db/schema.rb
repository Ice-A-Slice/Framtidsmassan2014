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

ActiveRecord::Schema.define(version: 20140301131952) do

  create_table "categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "telephone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_forms", force: true do |t|
    t.string   "contact"
    t.string   "organization"
    t.string   "telephone"
    t.string   "email"
    t.string   "food_amount"
    t.text     "food_other"
    t.string   "electricity"
    t.string   "internet"
    t.string   "seminar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibitor_informations", force: true do |t|
    t.string   "header"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibitors", force: true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.string   "position"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exhibitors", ["category_id"], name: "index_exhibitors_on_category_id"

  create_table "info_texts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "maps", force: true do |t|
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsfeeds", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_addresses", force: true do |t|
    t.string   "municipality"
    t.string   "company"
    t.string   "address"
    t.string   "post_number_and_city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_events", force: true do |t|
    t.string   "time"
    t.integer  "exhibitor_id"
    t.integer  "schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedule_events", ["exhibitor_id"], name: "index_schedule_events_on_exhibitor_id"
  add_index "schedule_events", ["schedule_id"], name: "index_schedule_events_on_schedule_id"

  create_table "schedules", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time"
    t.integer  "exhibitors_id"
    t.integer  "rooms_id"
  end

  add_index "schedules", ["exhibitors_id"], name: "index_schedules_on_exhibitors_id"
  add_index "schedules", ["rooms_id"], name: "index_schedules_on_rooms_id"

  create_table "slide_images", force: true do |t|
    t.string   "image_url1"
    t.string   "image_url2"
    t.string   "image_url3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
