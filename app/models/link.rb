class Link < ActiveRecord::Base
  attr_accessible :road_id, :unit_id, :title, :url, :url_type
  
  belongs_to :unit
end
