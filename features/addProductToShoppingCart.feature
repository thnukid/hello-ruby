Feature: Adding products to the cart
          As an vistor of the webshop
          I want to add a product to my cart
          In order to buy products

Scenario: Successful add a product to the shopping cart
  Given I have a list of products
  Given I am on the product listing page
  When I add a product to my cart
  Then I see the product being added to my cart
