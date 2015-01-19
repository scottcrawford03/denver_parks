class Park < ActiveRecord::Base
  self.per_page = 10

  def self.facility_includes(type)
    where(parks[:facilities].matches("%#{type}%"))
  end

  private

  def self.parks
    Arel::Table.new(:parks)
  end
end
