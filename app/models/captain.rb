class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators
    #returns all captains of catamarans
  
  end
  
  def self.sailors
    #
  end
end
