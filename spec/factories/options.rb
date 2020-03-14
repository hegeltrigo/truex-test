FactoryBot.define do
  factory :option do
    name { 'cheese menonita' }
    description { Faker::Food.description }
    association :option_type, factory: :option_type

  end  
end