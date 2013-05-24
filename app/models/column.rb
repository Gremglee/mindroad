class Column < ActiveRecord::Base
  attr_accessible :first_line, :fourth_line, :road_id, :second_line, :third_line, :index_number_in_road
  
  has_many :units
  belongs_to :roads
end
