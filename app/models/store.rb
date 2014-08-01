class Store < ActiveRecord::Base
  has_many :store_style
  has_many :styles, :through => :store_styles
end
