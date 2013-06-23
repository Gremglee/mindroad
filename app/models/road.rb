class Road < ActiveRecord::Base
  attr_accessible :sector_id, :title
  
  has_many :columns
  has_many :units
  belongs_to :sector
end
