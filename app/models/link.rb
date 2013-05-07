class Link < ActiveRecord::Base
  attr_accessible :parent_road, :parent_unit, :title, :url, :url_type
  belongs_to :units
end
