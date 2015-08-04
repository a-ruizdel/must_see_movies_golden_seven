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

ActiveRecord::Schema.define(version: 20150804201059) do

  create_table "actors", force: :cascade do |t|
    t.string   "actor_name"
    t.text     "actor_bio"
    t.string   "actor_dob"
    t.string   "actor_image_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "director_name"
    t.text     "director_bio"
    t.string   "director_dob"
    t.string   "director_image_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "movie_title"
    t.integer  "movie_year"
    t.integer  "movie_duration"
    t.text     "movie_desc"
    t.string   "movie_image_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
