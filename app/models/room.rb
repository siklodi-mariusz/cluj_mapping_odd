class Room < ActiveRecord::Base
  has_and_belongs_to_many :facilities


  def self.seats_search(querry)
    if querry == ''
      seats = 0
    else
      seats = querry.split(' ').first
    end

    # max_seats = querry.split('-')[1]
    # where("min >= ? and max <= ?", min_seats, max_seats)
    where("min >= ?", seats)
  end

end
