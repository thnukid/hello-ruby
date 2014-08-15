Feature: Place an order
          As an vistor of the webshop
          I want to place an order
          In order to buy and receive the products in my cart

Scenario: Successful place an order
  Given I have a shopping cart and it has a product
  Given I am on the order page
  When I enter my details and select an payment method
  Then I see a message that confirms my order has been received
  And I return to the products page
