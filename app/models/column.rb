class Column < ActiveRecord::Base
  attr_accessible :first_line, :fourth_line, :road_id, :second_line, :third_line
  
  has_many :units
  belongs_to :road
end
