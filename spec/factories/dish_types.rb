FactoryBot.define do
  factory :dish_type do
    name { 'Hawaiian' }
    description { Faker::Food.description }
  end  
end