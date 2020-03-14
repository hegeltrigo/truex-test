require 'rails_helper'

RSpec.describe OptionType, type: :model do
  before(:all) do
    @option_type = create(:option_type)
  end

  it "is valid with valid attributes" do
    expect(@option_type).to be_valid
  end

  let(:option_type) { OptionType.new }
  it "is not valid without name" do
    expect(option_type).to_not be_valid
  end
end
