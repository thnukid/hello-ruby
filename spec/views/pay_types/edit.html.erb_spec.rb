require 'rails_helper'

RSpec.describe "pay_types/edit", :type => :view do
  before(:each) do
    @pay_type = assign(:pay_type, PayType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit pay_type form" do
    render

    assert_select "form[action=?][method=?]", pay_type_path(@pay_type), "post" do

      assert_select "input#pay_type_name[name=?]", "pay_type[name]"
    end
  end
end
