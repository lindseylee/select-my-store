class Style < ActiveRecord::Base
  # has_and_belongs_to_many :stores
  has_many :store_styles
  has_many :stores, :through => :store_styles
end
