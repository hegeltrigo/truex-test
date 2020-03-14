class DishType < ApplicationRecord
  validates :name, presence: true
end
