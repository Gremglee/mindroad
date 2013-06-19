class Road < ActiveRecord::Base
  attr_accessible :sector, :title
  
  has_many :columns
  has_many :units
  belongs_to :sector
end
