FactoryBot.define do
  factory :option do
    name { 'cheese' }
    description { Faker::Food.description }
  end  
end