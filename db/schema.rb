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

ActiveRecord::Schema.define(:version => 20130115170017) do

  create_table "cells", :force => true do |t|
    t.integer  "group_reader_subject_id"
    t.integer  "lesson_id"
    t.integer  "classroom_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "cells", ["classroom_id"], :name => "index_cells_on_classroom_id"
  add_index "cells", ["group_reader_subject_id"], :name => "index_cells_on_group_reader_subject_id"
  add_index "cells", ["lesson_id"], :name => "index_cells_on_lesson_id"

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "group_reader_subjects", :force => true do |t|
    t.integer  "group_id"
    t.integer  "reader_id"
    t.integer  "subject_id"
    t.integer  "minutes"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "group_reader_subjects", ["group_id"], :name => "index_group_reader_subjects_on_group_id"
  add_index "group_reader_subjects", ["reader_id"], :name => "index_group_reader_subjects_on_reader_id"
  add_index "group_reader_subjects", ["subject_id"], :name => "index_group_reader_subjects_on_subject_id"

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lessons", :force => true do |t|
    t.integer  "week_num"
    t.string   "start_time"
    t.string   "end_time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "readers", :force => true do |t|
    t.string   "name"
    t.integer  "ravity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
