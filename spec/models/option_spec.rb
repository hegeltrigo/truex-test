require 'rails_helper'

RSpec.describe Option, type: :model do
  before(:all) do
    @option = create(:option)
  end

  it "is valid with valid attributes" do
    expect(@option).to be_valid
  end

  let(:option) { DishType.new }
  it "is not valid without name" do
    expect(option).to_not be_valid
  end
end
