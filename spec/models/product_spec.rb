require 'rails_helper'

describe Product do
  it 'is a valid product' do
    expect(create(:product)).to be_valid
  end

  it 'requires a title' do
    product = build(:product, title: nil)
    expect(product).to_not be_valid
  end

  it 'requires a description' do
    product = build(:product, description: nil)
    expect(product).to_not be_valid
  end
end
