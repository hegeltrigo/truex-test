require 'rails_helper'

RSpec.describe LineOption, type: :model do
  before(:all) do
    @line_option = create(:line_option)
  end

  it "is valid with valid attributes" do
    expect(@line_option).to be_valid
  end
end
