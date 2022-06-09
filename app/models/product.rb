class Product < ApplicationRecord
  belongs_to :category
  has_many :locations
  validates :category_id, presence: true
  validates :weight, numericality: true
  validates :age_of_product, numericality: true
  validates :details, presence: true, length: { minimum: 0, maximum: 400 }
  validates :child_weight, numericality: true
  validates :marque, presence: true, length: { minimum: 0, maximum: 50 }
  validates :prix_par_jour, presence: true, numericality: true
  validates :number_of_place, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  include PgSearch::Model
  pg_search_scope :search_by_city,
    against: [ :city ],
    using: {
      tsearch: { prefix: true }
    }

end
