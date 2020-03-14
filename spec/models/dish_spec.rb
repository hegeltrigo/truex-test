require 'rails_helper'

RSpec.describe Dish, type: :model do

  before(:all) do
    @dish = create(:dish)
  end

  it "is valid with valid attributes" do
    expect(@dish).to be_valid
  end

  let(:dish) { Dish.new }
  it "is not valid without name" do
    expect(dish).to_not be_valid
  end

end
