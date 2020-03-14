class Dish < ApplicationRecord
  validates :name, presence: true

  has_many :dish_options
  has_many :option, through: :dish_options

end
