class Product < ApplicationRecord
  belongs_to :tag
  has_many :review

  validates_uniqueness_of :productname

end
