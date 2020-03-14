require 'rails_helper'

RSpec.describe DishSize, type: :model do
  before(:all) do
    @dish_size = create(:dish_size)
  end

  it "is valid with valid attributes" do
    expect(@dish_size).to be_valid
  end

  let(:dish_size) { DishSize.new }
  it "is not valid without name" do
    expect(dish_size).to_not be_valid
  end

end
