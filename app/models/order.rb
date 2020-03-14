class Order < ApplicationRecord
  has_many :line_dishes
  has_many :dishes, through: :line_dishes

  accepts_nested_attributes_for :line_dishes

end
