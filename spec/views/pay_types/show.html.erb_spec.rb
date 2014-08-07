require 'rails_helper'

RSpec.describe "pay_types/show", :type => :view do
  before(:each) do
    @pay_type = assign(:pay_type, PayType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
