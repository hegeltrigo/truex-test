require 'rails_helper'

RSpec.describe LineDish, type: :model do
  before(:all) do
    @line_dish = create(:line_dish)
  end

  it "is valid with valid attributes" do
    expect(@line_dish).to be_valid
  end

end
