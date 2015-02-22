class Facility < ActiveRecord::Base
  has_and_belongs_to_many :rooms
  validates :name, uniqueness: true

  def self.facility_search(query)
    
  end
end
