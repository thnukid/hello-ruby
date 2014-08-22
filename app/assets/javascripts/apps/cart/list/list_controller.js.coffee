App.module "CartApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller =
    listCart: ->
      cartItems = App.request("cart:entities")
      cartView = new List.Cart(collection: cartItems)
      App.cartRegion.show cartView
    addItem: (data) ->
      newItem = new Entities.LineItem(data)
