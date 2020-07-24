class Review < ApplicationRecord
  belongs_to :product
  validates_uniqueness_of :username
end
