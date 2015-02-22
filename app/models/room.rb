class Room < ActiveRecord::Base
  has_and_belongs_to_many :facilities


  def self.seats_search(querry)
    seats = querry.split(' ').first
    # max_seats = querry.split('-')[1]
    # where("min >= ? and max <= ?", min_seats, max_seats)
    where("min >= ?", seats)
  end

end
