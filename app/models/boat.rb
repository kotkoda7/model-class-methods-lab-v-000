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
  Boat.order("name DESC").limit(3)
end

def self.without_a_captain
  where(captain: nil)
end

def self.sailboats
  #Returns all boats that are sailboats
  where(classification: "Sailboat")
  
end

def self.with_three_classifications
  #returns boats with three classifications
  
end
end
