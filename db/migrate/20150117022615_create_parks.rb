class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string  :LOCATION
      t.string  :FORMAL_NAME
      t.string  :LOC_CODE
      t.string  :PARK_TYPE
      t.string  :PARK_CLASS
      t.float   :GIS_ACRES
      t.string  :DESIGNATED
      t.integer :FIRST_AQ_DATE
      t.string  :MASTER_PLAN
      t.string  :MAINT_DIST
      t.string  :COUNCIL_DIST
      t.string  :POLICE_DIST
      t.string  :CROSS_STREETS
      t.string  :ADDRESS_ID
      t.string  :ADDRESS_LINE1
      t.string  :ADDRESS_LINE2
      t.string  :CITY
      t.string  :STATE
      t.string  :ZIP
      t.float   :LATITUDE
      t.float   :LONGITUDE
      t.string  :MARKETING_CODE
      t.string  :FACILITIES
      t.string  :DIAGRAM
      t.string  :PHOTO
      t.string  :PARCEL_MATCH
      t.string  :BND_QC
      t.string  :GLOBALID
    end
  end
end
