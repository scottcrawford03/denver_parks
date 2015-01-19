class Park < ActiveRecord::Base
  self.per_page = 10

  FACILITIES = ['Benches', 'Basketball Court', 'Bike/Pedestrian Path', 'Community Garden',
                'Dog Park', 'Drinking Fountain', 'Fishing', 'Fountain', 'Grills',
                'Lake', 'Natural Areas', 'Outdoor Pool', 'Parking Lot', 'Picnic Area',
                'Platte River Trail', 'Playground', 'Public Art', 'Restroom',
                'Skate Park', 'Soccer Field', 'Wildlife Habitat']

  def self.facility_includes(type)
    where(parks[:facilities].matches("%#{type}%"))
  end

  private

  def self.parks
    Arel::Table.new(:parks)
  end
end
