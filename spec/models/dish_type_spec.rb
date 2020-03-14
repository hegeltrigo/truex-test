require 'rails_helper'

RSpec.describe DishType, type: :model do
  before(:all) do
    @dish_type = create(:dish_type)
  end

  it "is valid with valid attributes" do
    expect(@dish_type).to be_valid
  end

  let(:dish_type) { DishType.new }
  it "is not valid without name" do
    expect(dish_type).to_not be_valid
  end
end
