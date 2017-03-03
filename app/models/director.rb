class Director < ActiveRecord::Base
  
  has_many :movies    
  
  # Movie.where(:director_id => self.id) 
  
  
end
