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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130607163759) do

  create_table "columns", :force => true do |t|
    t.integer  "road_id"
    t.integer  "index_number_in_road"
    t.integer  "first_line"
    t.integer  "second_line"
    t.integer  "third_line"
    t.integer  "fourth_line"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "links", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "unit_id"
    t.integer  "road_id"
    t.integer  "url_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roads", :force => true do |t|
    t.string   "title"
    t.integer  "sector_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sectors", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "road_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
