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

ActiveRecord::Schema.define(version: 20150117022615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parks", force: :cascade do |t|
    t.string "location"
    t.string "formal_name"
    t.string "loc_code"
    t.string "park_type"
    t.string "park_class"
    t.float  "gis_acres"
    t.string "designated"
    t.string "first_aq_date"
    t.string "master_plan"
    t.string "maint_dist"
    t.string "council_dist"
    t.string "police_dist"
    t.string "cross_streets"
    t.string "address_id"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.float  "latitude"
    t.float  "longitude"
    t.string "marketing_code"
    t.string "facilities"
    t.string "diagram"
    t.string "photo"
    t.string "parcel_match"
    t.string "bnd_qc"
    t.string "globalid"
  end

end
