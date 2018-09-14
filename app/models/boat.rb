class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications


def self.first_five
  Boat.limit(5)
end

def self.dinghy
  Boat.where("length < ?", 20)
end

def self.ship
  Boat.where("length >= ?", 20)
end

def self.last_three_alphabetically
  
end
