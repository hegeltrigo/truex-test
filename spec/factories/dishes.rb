FactoryBot.define do
  factory :dish do
    name { Faker::Food }
    description { Faker::Food.description }
  end  
end