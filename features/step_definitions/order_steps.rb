When(/^I have a shopping cart and it has a product$/) do
  2.times do
   create :product
  end
  @cart = Cart.new
  @cart.id = 1
  @cart.add_product(Product.first.id)
end

Given(/^I am on the order page$/) do
  visit new_order_path
  page.should have_xpath('//form')
end

When(/^I enter my details and select an payment method$/) do
    print page.html
  within(:css, "form#new_order") do
    print page.html
  end

end

Then(/^I see a message that confirms my order has been received$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I return to the products page$/) do
    pending # express the regexp above with the
end
