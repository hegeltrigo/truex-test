FactoryBot.define do
  factory :line_dish do
    association :order, factory: :order
    association :dish, factory: :dish
  end  
end