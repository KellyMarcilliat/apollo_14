class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
  
  def self.average_age
    Astronaut.average(:age)
  end 
end
