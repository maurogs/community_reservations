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

ActiveRecord::Schema.define(version: 20150419125919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.integer  "house_id",   default: 0
    t.string   "name",       default: ""
    t.string   "lastname",   default: ""
    t.string   "password",   default: ""
    t.string   "email",      default: ""
    t.float    "latitude",   default: 0.0
    t.float    "longitude",  default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communities", force: true do |t|
    t.string   "name",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "football_spaces", force: true do |t|
    t.integer  "community_id", default: 0
    t.string   "name",         default: ""
    t.string   "address",      default: ""
    t.integer  "players",      default: 0
    t.string   "soil",         default: ""
    t.string   "type",         default: ""
    t.string   "open_hour",    default: ""
    t.string   "close_hour",   default: ""
    t.float    "latitude",     default: 0.0
    t.float    "longitude",    default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "houses", force: true do |t|
    t.integer  "community_id", default: 0
    t.string   "address",      default: ""
    t.string   "members",      default: ""
    t.float    "latitude",     default: 0.0
    t.float    "longitude",    default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "padel_spaces", force: true do |t|
    t.integer  "community_id", default: 0
    t.string   "name",         default: ""
    t.string   "address",      default: ""
    t.integer  "players",      default: 0
    t.string   "soil",         default: ""
    t.string   "type",         default: ""
    t.string   "open_hour",    default: ""
    t.string   "close_hour",   default: ""
    t.float    "latitude",     default: 0.0
    t.float    "longitude",    default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_spaces", force: true do |t|
    t.integer  "community_id", default: 0
    t.string   "name",         default: ""
    t.string   "address",      default: ""
    t.integer  "capacity",     default: 0
    t.string   "size",         default: "mediano"
    t.string   "type_space",   default: ""
    t.string   "open_hour",    default: ""
    t.string   "close_hour",   default: ""
    t.float    "latitude",     default: 0.0
    t.float    "longitude",    default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "client_id",  default: 0
    t.string   "name",       default: ""
    t.integer  "hour",       default: 0
    t.string   "date",       default: ""
    t.integer  "space_id",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaces", force: true do |t|
    t.integer  "community_id",         default: 1
    t.string   "name",                 default: ""
    t.text     "description",          default: ""
    t.string   "type_space",           default: ""
    t.string   "open_hour",            default: ""
    t.string   "close_hour",           default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "tenis_spaces", force: true do |t|
    t.integer  "community_id", default: 0
    t.string   "name",         default: ""
    t.string   "address",      default: ""
    t.integer  "players",      default: 0
    t.string   "soil",         default: ""
    t.string   "type",         default: ""
    t.string   "open_hour",    default: ""
    t.string   "close_hour",   default: ""
    t.float    "latitude",     default: 0.0
    t.float    "longitude",    default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
