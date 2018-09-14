class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators
    #returns all captains of catamarans
  
  end
  
  def self.sailors
    #returns captains withsailboats
  end
  
  def self.talented_seafarers
    #returns captains of motorboats and sailboats
end
end
