require 'rails_helper'

RSpec.describe "pay_types/index", :type => :view do
  before(:each) do
    assign(:pay_types, [
      PayType.create!(
        :name => "Name"
      ),
      PayType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of pay_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
