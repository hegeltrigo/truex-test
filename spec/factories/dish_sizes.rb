FactoryBot.define do
  factory :dish_size do
    name { 'small' }
    description { Faker::Food.description }
  end  
end