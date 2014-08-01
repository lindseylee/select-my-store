class Style < ActiveRecord::Base
  has_many :store_style
  has_many :stores
