App.module "CartApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.LineItems extends Marionette.ItemView
    template: "cart/templates/cart_lineItems_list"
    tagName: "tr"

  class List.Cart extends Marionette.CompositeView
    template: "cart/templates/cart_list"
    childView: List.LineItems
    tagName: "table"
    childViewContainer: "tbody"
