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
    t.string  "LOCATION"
    t.string  "FORMAL_NAME"
    t.string  "LOC_CODE"
    t.string  "PARK_TYPE"
    t.string  "PARK_CLASS"
    t.float   "GIS_ACRES"
    t.string  "DESIGNATED"
    t.integer "FIRST_AQ_DATE"
    t.string  "MASTER_PLAN"
    t.string  "MAINT_DIST"
    t.string  "COUNCIL_DIST"
    t.string  "POLICE_DIST"
    t.string  "CROSS_STREETS"
    t.string  "ADDRESS_ID"
    t.string  "ADDRESS_LINE1"
    t.string  "ADDRESS_LINE2"
    t.string  "CITY"
    t.string  "STATE"
    t.string  "ZIP"
    t.float   "LATITUDE"
    t.float   "LONGITUDE"
    t.string  "MARKETING_CODE"
    t.string  "FACILITIES"
    t.string  "DIAGRAM"
    t.string  "PHOTO"
    t.string  "PARCEL_MATCH"
    t.string  "BND_QC"
    t.string  "GLOBALID"
  end

end
