class Order < ApplicationRecord
  has_many :line_dishes
  has_many :items, through: :line_dishes
end
