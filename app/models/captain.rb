class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators
    #returns all captains of catamarans
    includes(boats: :classifications).where(classifications: {name: "Catamaran"})
  end
  
  def self.sailors
    #returns captains with sailboats
    includes(boats: :classifications).where(classifications: { name: 'Sailboat' }).uniq
  end
  
  def self.talented_seafarers
    #returns captains of motorboats and sailboats
end

  def self.non_sailors
    #returns people who are not captains of sailboats
    
end
end
