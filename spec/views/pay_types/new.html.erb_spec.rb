require 'rails_helper'

RSpec.describe "pay_types/new", :type => :view do
  before(:each) do
    assign(:pay_type, PayType.new(
      :name => "MyString"
    ))
  end

  it "renders new pay_type form" do
    render

    assert_select "form[action=?][method=?]", pay_types_path, "post" do

      assert_select "input#pay_type_name[name=?]", "pay_type[name]"
    end
  end
end
