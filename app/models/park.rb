class Park < ActiveRecord::Base
  def self.facility_includes(type)
    where(parks[:facilities].matches("%#{type}%"))
  end

  private

  def self.parks
    Arel::Table.new(:parks)
  end
end
