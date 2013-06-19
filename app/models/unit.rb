class Unit < ActiveRecord::Base
  attr_accessible :description, :road_id, :title
  
  has_many :links
  belongs_to :road
  belongs_to :column
end
