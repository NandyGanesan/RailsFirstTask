class Tag < ApplicationRecord
  has_many :product
  
  validates_uniqueness_of :tagname
end
