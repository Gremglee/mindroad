class Unit < ActiveRecord::Base
  attr_accessible :description, :parent_road, :title
  has_many :links
end
