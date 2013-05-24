class Road < ActiveRecord::Base
  attr_accessible :sector, :title
  has_many :columns
end
