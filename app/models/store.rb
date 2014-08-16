class Store < ActiveRecord::Base
  # has_and_belongs_to_many :styles
  has_many :store_styles
  has_many :styles, :through => :store_styles
end
