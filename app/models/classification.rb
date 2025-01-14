require 'pry'

class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all
  end

  def self.longest
    longest_boat = Boat.order(length: :desc).limit(1)[0]
    longest_boat.classifications
    
      # Boat.longest.classifications
      # there is method we made in Boat ".longest"
  end

end
