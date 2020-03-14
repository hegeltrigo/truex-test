require 'rails_helper'

RSpec.describe Order, type: :model do
  before(:all) do
    @order = create(:order)
  end

  it "is valid with valid attributes" do
    expect(@order).to be_valid
  end

 
end
