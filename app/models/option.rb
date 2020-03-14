class Option < ApplicationRecord
  validates :name, presence: true
  belongs_to :option_type

  has_many :dish_options
  has_many :dishes, through: :dish_options
  
end
