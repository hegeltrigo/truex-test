FactoryBot.define do
  factory :line_option do
    association :line_dish, factory: :line_dish
    association :option, factory: :option
  end  
end