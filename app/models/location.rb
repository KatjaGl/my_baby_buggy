class Location < ApplicationRecord
  belongs_to :user
  belongs_to :product
  # validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
