class Role < ActiveRecord::Base
  
  belongs_to :movie   # movie_id
  belongs_to :actor   # actor_id
  
end
