class LineDish < ApplicationRecord
  belongs_to :order
  belongs_to :dish
  has_many :line_options
  has_many :options, through: :line_options

  accepts_nested_attributes_for :line_options

end
