FactoryBot.define do
  factory :option_type do
    name { 'Salsa' }
    description { Faker::Food.description }
  end  
end