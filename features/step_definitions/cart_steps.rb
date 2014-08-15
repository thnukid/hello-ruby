When(/^I have a list of products$/) do
  2.times do
    create :product
  end
  create :product, title: "Michel is super toll"
end

When(/^I add a product to my cart$/) do
  within(:css, ".product-id-1 .price_line") do
    click_button('Add to Cart')
  end
end

Given(/^I am on the product listing page$/) do
  visit store_path
  page.should have_content(Product.first.title)
end

Then(/^I see the product being added to my cart$/) do
  within(:css, "#cart") do
    page.should have_content(Product.first.title)
  end
end
