class Sector < ActiveRecord::Base
  attr_accessible :title

  has_many :roads
end
