FactoryBot.define do
  factory :option do
    name { 'cheese menonita' }
    description { Faker::Food.description }
  end  
end