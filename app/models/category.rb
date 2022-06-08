class Category < ApplicationRecord
  has_many :products
  validates :product_name, presence: true

end
