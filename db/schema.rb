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

ActiveRecord::Schema.define(:version => 20131203075157) do

  create_table "api_versions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "released_on"
    t.integer  "active",      :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "api_versions_docs", :id => false, :force => true do |t|
    t.integer "api_version_id"
    t.integer "doc_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "docs", :force => true do |t|
    t.string   "title_short"
    t.text     "title_long"
    t.text     "description"
    t.string   "http_method"
    t.string   "requires_authentication"
    t.text     "query_format"
    t.text     "sample_query"
    t.text     "parameters"
    t.string   "response_format"
    t.text     "response_output_format"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "category_id"
    t.text     "success_codes"
    t.text     "error_codes"
  end

end
