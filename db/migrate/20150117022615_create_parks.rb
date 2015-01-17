class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string  :location
      t.string  :formal_name
      t.string  :loc_code
      t.string  :park_type
      t.string  :park_class
      t.float   :gis_acres
      t.string  :designated
      t.string :first_aq_date
      t.string  :master_plan
      t.string  :maint_dist
      t.string  :council_dist
      t.string  :police_dist
      t.string  :cross_streets
      t.string  :address_id
      t.string  :address_line1
      t.string  :address_line2
      t.string  :city
      t.string  :state
      t.string  :zip
      t.float   :latitude
      t.float   :longitude
      t.string  :marketing_code
      t.string  :facilities
      t.string  :diagram
      t.string  :photo
      t.string  :parcel_match
      t.string  :bnd_qc
      t.string  :globalid
    end
  end
end
