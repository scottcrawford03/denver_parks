class Park < ActiveRecord::Base
  self.per_page = 10

  FACILITIES = ['Benches', 'Bike/Pedestrian Path', 'Community Garden',
                'Dog Park', 'Fountain', 'Grills', 'Lake', 'Outdoor Pool',
                'Parking Lot', 'Picnic Tables', 'Playground', 'Public Art',
                'Restroom', 'Skate Park', 'Wildlife Habitat']

  def self.facility_includes(type)
    where(parks[:facilities].matches("%#{type}%"))
  end

  private

  def self.parks
    Arel::Table.new(:parks)
  end
end
