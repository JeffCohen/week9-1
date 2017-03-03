class Movie < ActiveRecord::Base
  
  belongs_to :director # director_id
  
  has_many :roles # movie.roles
  has_many :actors, :through => :roles  # movie.actors
  
end
# id  title  director_id    year
# -- --------- -----------  ----
# 34 Apollo 13    72        1995