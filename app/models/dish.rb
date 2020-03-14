class Dish < ApplicationRecord
  validates :name, presence: true

  has_many :dish_sizes
  has_many :dish_options
  has_many :options, through: :dish_options

end
